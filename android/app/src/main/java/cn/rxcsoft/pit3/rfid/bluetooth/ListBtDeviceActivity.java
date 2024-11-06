package cn.rxcsoft.pit3.rfid.bluetooth;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import cn.rxcsoft.pit3.R;


/**
 * デバイス選択
 *
 * @author Tohoku Systems Support.Co.,Ltd.
 */
public class ListBtDeviceActivity extends Activity {
    private final static String TAG = ListBtDeviceActivity.class.getSimpleName();
    public static final String DOTR910I_PREFIX_TSS = "TSS91JI-";
    public static final String DOTR920I_PREFIX_TSS = "TSS92JI-";
    public static final String DOTR900I_PREFIX_TSS = "BLE SPP";

    private ListView mListDevice;                                //デバイスリスト
    private ArrayList<HashMap<String, String>> mArrBtDevice;
    private BaseAdapter mAdapterDevice;
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private BluetoothLeScanner mBleScanner;
    private boolean isDiscoveringBLE = false; //BLE機器検索中はTRUE
    private ProgressDialog progress;

    public static final String DEVICE_ADDRESS = "DEVICE_ADDRESS";
    public static final String DEVICE_NAME = "DEVICE_NAME";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.list_bt_device);

        mListDevice = (ListView) findViewById(R.id.list_btdevice);
        initBluetoothDeviceList(R.id.list_btdevice);

        if (!mBluetoothAdapter.isEnabled()) {
            Intent discoverableIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_DISCOVERABLE);
            discoverableIntent.putExtra(BluetoothAdapter.EXTRA_DISCOVERABLE_DURATION, 300);
            startActivity(discoverableIntent);
        }

        //Android M以降でBluetooth検知・接続するため
        if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP_MR1) {
            final String[] lPermissions = new String[]{Manifest.permission.ACCESS_COARSE_LOCATION};
            int permissionCheckLocation = ContextCompat.checkSelfPermission(ListBtDeviceActivity.this, Manifest.permission.ACCESS_COARSE_LOCATION);
            if (permissionCheckLocation == PackageManager.PERMISSION_GRANTED) {
                resetBtDeviceList();
                startDiscovery();
            } else if (permissionCheckLocation == PackageManager.PERMISSION_DENIED) {
                if (ActivityCompat.shouldShowRequestPermissionRationale(this, Manifest.permission.ACCESS_COARSE_LOCATION)) {
                    // パーミッション確認ダイアログ
                    new AlertDialog.Builder(this)
                            .setTitle(getResources().getString(R.string.alertDialog_title_permission))
                            .setMessage(getResources().getString(R.string.alertDialog_message_permission_location))
                            .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    ActivityCompat.requestPermissions(ListBtDeviceActivity.this, lPermissions, REQ_CODE_ACCESS_COARSE_LOCATION);
                                }
                            })
                            .create()
                            .show();
                } else {
                    ActivityCompat.requestPermissions(ListBtDeviceActivity.this, lPermissions, REQ_CODE_ACCESS_COARSE_LOCATION);
                }
            }
        } else {
            resetBtDeviceList();
            startDiscovery();
        }
    }


    private void resetBtDeviceList() {
        mArrBtDevice.clear();
        mAdapterDevice.notifyDataSetChanged();
    }


    private boolean initBluetoothDeviceList(int id) {
        mListDevice = (ListView) findViewById(id);
        if (mListDevice != null) {
            mArrBtDevice = new ArrayList<>();
            mAdapterDevice = new SimpleAdapter(this, mArrBtDevice,
                    android.R.layout.simple_list_item_2,
                    new String[]{"name", "address"},
                    new int[]{android.R.id.text1, android.R.id.text2});
            mListDevice.setAdapter(mAdapterDevice);
            mListDevice.setOnItemClickListener(mDeviceClickListener);
        }

        return mListDevice != null;
    }

    private void startDiscovery() {
        if (!isDiscoveringBLE) {
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
                return;
            }
            // デバイスがBLEに対応しているかを確認する.
            if (getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE)) {
                mBleScanner = mBluetoothAdapter.getBluetoothLeScanner();
                mBleScanner.startScan(mScanCallBack);
                isDiscoveringBLE = true;
                mHandler.postDelayed(r, 5000);
            } else {
                // BLEに対応していない旨のToastやダイアログを表示する.
                return;
            }
            //プログレスバーを表示する
            progress = ProgressDialog.show(this, "", "デバイス検索中...", false, true, new OnCancelListener() {
                public void onCancel(DialogInterface arg0) {
                    if (isDiscoveringBLE) {
                        mBleScanner.stopScan(mScanCallBack);
                        isDiscoveringBLE = false;
                    }
                }
            });
        }

    }


    private OnItemClickListener mDeviceClickListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> av, View v, int arg2, long arg3) {
            if (isDiscoveringBLE) {
                mBleScanner.stopScan(mScanCallBack);
                isDiscoveringBLE = false;
            }

            HashMap<String, String> map = mArrBtDevice.get(arg2);
            if (map == null)
                return;

            if (map.get("address") == null)
                return;

			/* ----------------------------------------
             * 呼び出し元に結果を返す。
			 * ---------------------------------------- */
            Intent i = new Intent();
            i.putExtra(DEVICE_ADDRESS, map.get("address"));
            i.putExtra(DEVICE_NAME, map.get("name"));
            setResult(RESULT_OK, i);
            finish();
        }
    };


    @Override
    public void onBackPressed() {
        super.onBackPressed();

        if (isDiscoveringBLE) {
            mBleScanner.stopScan(mScanCallBack);
            isDiscoveringBLE = false;
        }
        setResult(RESULT_CANCELED);
    }


    private boolean mUnregister = false;

    /* (非 Javadoc)
     * @see android.app.Activity#finalize()
     */
    @Override
    protected void finalize() throws Throwable {
        super.finalize();
    }

    private static final int REQ_CODE_ACCESS_COARSE_LOCATION = 1;

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        switch (requestCode) {
            case REQ_CODE_ACCESS_COARSE_LOCATION:
                if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    resetBtDeviceList();
                    startDiscovery();
                } else {
                    Log.d(TAG, "このアプリの利用には低精度の位置情報へのアクセス許可が必要です");
                }
                break;
            default:
                break;
        }
    }


    //スキャン結果のCallbackを受け止める
    private final ScanCallback mScanCallBack = new ScanCallback() {
        @Override
        public void onScanResult(int callbackType, ScanResult result) {
            super.onScanResult(callbackType, result);
            //スキャン結果からBluetoothデバイス情報を取得
            BluetoothDevice bluetoothDevice = result.getDevice();

            if (bluetoothDevice.getName() == null||"".equalsIgnoreCase(bluetoothDevice.getName()))
                return;

            String deviceName = bluetoothDevice.getName().toUpperCase();


//            addBLEDevice(bluetoothDevice);
            if (!deviceName.startsWith(DOTR900I_PREFIX_TSS) && !deviceName.startsWith(DOTR910I_PREFIX_TSS) && !deviceName.startsWith(DOTR920I_PREFIX_TSS))
                return;

            HashMap<String, String> item = new HashMap<>();
            item.put("name", deviceName);
            item.put("address", bluetoothDevice.getAddress());

            if (mArrBtDevice.contains(item))
                return;

            mArrBtDevice.add(item);
            mAdapterDevice.notifyDataSetChanged();
        }

        @Override
        public void onBatchScanResults(List<ScanResult> results) {
            //Callback when batch results are delivered.
            super.onBatchScanResults(results);

            for (ScanResult s : results) {
                Log.d(TAG, "[PROGRESS]" + "ScanCallback.onBatchScanResults : MAC=" + s.getDevice().getAddress());
            }
        }


        /**
         * Callback when scan could not be started.
         * スキャンがはじめられなかった時に受け取る
         *
         * @param errorCode Error Code
         */
        @Override
        public void onScanFailed(int errorCode) {
            super.onScanFailed(errorCode);
            //スキャン進行中ダイアログを閉じる
            isDiscoveringBLE = false;
            if (progress != null) {
                progress.cancel();
                progress = null;
            }

            switch (errorCode) {
                case ScanCallback.SCAN_FAILED_ALREADY_STARTED:
                    //既にスキャンが開始している
                case ScanCallback.SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:
                    //Fails to start scan as app cannot be registered.
                    //アプリを登録できない
                case ScanCallback.SCAN_FAILED_FEATURE_UNSUPPORTED:
                    //Fails to start power optimized scan as this feature is not supported.
                    //機能がサポートされていない
                case ScanCallback.SCAN_FAILED_INTERNAL_ERROR:
                    //Fails to start scan due an internal error
                    //内部エラー
                    break;
                default:
                    break;
            }
        }
    };


    final Runnable r = new Runnable() {
        @Override
        public void run() {
            //BLEスキャンを止める
            mBleScanner.stopScan(mScanCallBack);
            isDiscoveringBLE = false;
            if (progress != null) {
                progress.cancel();
                progress = null;
            }
            if (mArrBtDevice.size() == 0) {
                HashMap<String, String> item = new HashMap<>();
                item.put("name", "見つかりませんでした。");
                item.put("address", "");
                mArrBtDevice.add(item);
                mAdapterDevice.notifyDataSetChanged();
            }
        }
    };

    private ListBtDeviceHandler mHandler = new ListBtDeviceHandler(ListBtDeviceActivity.this);

    static class ListBtDeviceHandler extends Handler {
        private final WeakReference<ListBtDeviceActivity> myFragment;
        byte[] buffer = null;
        String data = null;

        ListBtDeviceHandler(ListBtDeviceActivity activity) {
            myFragment = new WeakReference<>(activity);
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
        }
    }
}
