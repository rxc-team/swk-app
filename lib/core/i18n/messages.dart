import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  // 支持的语言列表
  static List<Locale> get supportedLocales {
    return const <Locale>[Locale("zh", "CN"), Locale("en", "US"), Locale("ja", "JP"), Locale("th", "TH")];
  }

  // 默认语言
  static Locale get defaultLocale {
    return const Locale("ja", "JP");
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "app_name": "PIT3-APP",
          "description": "Inventory system",
          "empty_msg": "No data~",
          "not_found_name": "Unnamed",
          "no_more_data": "No more data",
          "loading": "Loading...",
          "reloading": "Reloading...",
          "pop_title": "Tips",
          "pop_tip": "Are you sure to quit the app",
          "pop_cancle_btn": "cancel",
          "pop_ok_btn": "abort",
          "login_title": "Login",
          "login_input_email": "email",
          "login_input_password": "password",
          "login_btn": "Login",
          "login_loading": "Go to home page...",
          "logout_loading": "Logout...",
          "login_successful": "Successful login, will enter the main program screen",
          "home_title": "Home",
          "home_tab_title": "Home",
          "drawer_unauth": "Not logged in",
          "drawer_unauth_tips": "Click the avatar to enter the login page",
          "drawer_logout": "Logout out",
          "setting_title": "Setting",
          "setting_tab_title": "Setting",
          "setting_base_title": "Basic settings",
          "setting_service_title": "Server info settings",
          "setting_service_develop": "Testing Environment",
          "setting_service_prod": "Production Environment",
          "setting_service_custom": "Custom Environment",
          "setting_service_address": "api server address",
          "setting_service_file_service_address": "file server address",
          "setting_language_title": "Language settings",
          "setting_language_select_title": "Please select a language",
          "setting_language_zh": "简体中文",
          "setting_language_en": "English",
          "setting_language_jp": "日本語",
          "setting_language_th": "ไทย",
          "setting_app_title": "App settings",
          "setting_app_select_title": "Please select app",
          "setting_app_current": "Current app settings",
          "setting_field_title": "Datastore show fields settings",
          "setting_show_field": "Display fields",
          "setting_show_field_tips": "The list page can only display up to three fields",
          "setting_datastore_placeholder": "Please select a datastore",
          "setting_scan_title": "Scan settings",
          "setting_scan_divice_title": "Scan divice",
          "setting_rfid_setting_title": "RFID setting",
          "setting_scan_datastore_title": "Scan datastore settings",
          "setting_scan_show_detail": "Show detail",
          "setting_scan_check_in": "Check in",
          "setting_scan_gun": "Barcode reader",
          "setting_scan_camera": "Camera",
          "setting_scan_datastore": "Scan datastore",
          "setting_scan_datastore_placeholder": "Please select a datastore",
          "setting_scan_field": "Scan field",
          "setting_scan_field_placeholder": "Please select a field",
          "setting_scan_update_field_title": "Update field settings",
          "setting_scan_update_field": "Update field",
          "setting_scan_update_value": "Contents",
          "setting_image_title": "Image setting",
          "setting_show_image_label": "Display image",
          "setting_clear_image_label": "Clear cache",
          "setting_list_title": "List setting",
          "setting_list_count_title": "Number of pieces displayed",
          "setting_list_offline_title": "Offline mode",
          "setting_update_title": "Update settings",
          "setting_update_version_title": "Version",
          "setting_update_check_title": "Check for updates",
          "setting_privacy_statement_title": "Privacy statement",
          "setting_about_title": "About us",
          "about_title": "About us",
          "scan_title": "Scan",
          "scan_query_loading": "query...",
          "scan_not_found_data": "No found data",
          "scan_check_mismatch": "The current data and the queried data do not match, please check!",
          "scan_mutil_tips": "@total in total, @selected selected",
          "scan_rescan_btn": "Rescan",
          "scan_single_btn": "single",
          "scan_mutil_btn": "mutil",
          "scan_single_net_tips": "Must be in good network condition",
          "scan_mutil_net_tips": "Can be done without network",
          "scan_config_not_set": "Scanning config is not set, cannot scan",
          "scan_result_title": "Scan results:",
          "scan_result_over_title": "has scanned",
          "scan_result_count": "count",
          "scan_result_success": "Successfully found",
          "scan_result_failure": "Not find",
          "swtich_date_tips": "Same day or specified date",
          "search_title": "Search",
          "search_type": "Search type",
          "search_list_title": "Search conditions list",
          "detail_title": "Detailed data",
          "detail_not_check": "No checked record",
          "detail_update_info": "Update info",
          "detail_create_info": "Create info",
          "detail_check_info": "Check　info",
          "search_operator_equal": "equal",
          "search_operator_like": "like",
          "search_operator_exist": "exist",
          "search_operator_not_equal": "not equal",
          "search_operator_greater_equal": "greater or equal to",
          "search_operator_less_equal": "less than or equal to",
          "search_operator_greater": "greater",
          "search_operator_less": "less than",
          "search_condition_title": "Search condition setting",
          "search_condition_field": "Search field",
          "search_condition_type": "Search type",
          "search_condition_value": "Search contents",
          "search_condition_operating": "Actions",
          "tempalte_title": "Temporary data creation",
          "add_title": "Create New",
          "update_title": "Update",
          "error_title": "Error",
          "info_check_success": "Check succeeded",
          "info_add_success": "Add succeeded",
          "info_update_success": "Update succeeded",
          "info_save_success": "Save succeeded",
          "info_scan_success": "Scan succeeded",
          "info_check_required": "This item is required, please enter content",
          "info_file_upload_loading": "File upload...",
          "info_check_version_loading": "Checking for updates...",
          "info_no_new_version": "No update",
          "info_check_loading": "Checking...",
          "info_checked": "This item has been scanned",
          "info_database_switch_confirm":
              "After the account is switched, the current search condition will be cleared, and the search condition needs to be reset. Do you want to switch?",
          "info_checked_update_confirm": "Change tips",
          "info_mutil_scan_result": "total @total，success @count",
          "error_no_data": "Sorry, An error has occurred.",
          "error_update_fields_conflict": "The currently updated project conflicts with the workflow setting. Please revise and re-count.",
          "error_net_request_timeout": "Network request timed out or failed, please check your network",
          "error_net_unsupport": "An unknown error has occurred. Contact your system service provider",
          "error_server": "Unable to access the server",
          "error_no_net": "Network connection failed. Check the network",
          "error_check_failure": "Check failed",
          "error_not_set_scan": "Sorry, you have not set up the scanned account information, please set it up and then scan.",
          "error_scan_data_not_match": "The scan result does not match the inventory setting.",
          "error_unique": "The @fields value already exists, please enter another value",
          "error_401": "Authentication failed, please log in again",
          "error_403": "Authority authentication failed, please contact the administrator",
          "error_500": "There is an error in the background service. Please contact the administrator.",
          "placeholder_select": "Please select a value",
          "placeholder_input": "Please enter the content",
          "placeholder_auto_input": "Automatic input",
          "button_file_upload": "File Upload",
          "button_image_upload": "Image Upload",
          "button_tpl_add": "Template data add",
          "button_add": "Add",
          "button_clear": "Clear",
          "button_start_search": "Start searching",
          "button_ok": "OK",
          "button_save": "Save",
          "button_return": "Return",
          "button_cancle": "Cancle",
          "button_create": "Create",
          "button_new": "Create data",
          "button_copy": "Copy",
          "button_update": "Update",
          "button_check": "Check",
          "button_eye_check": "Visual",
          "button_image_check": "Check with image",
          "button_scan": "Scan",
          "button_search": "Search",
          "button_continue_check": "Continue to check",
          "button_audit": "apply",
          "image_upload_tips": "Please select image source",
          "image_upload_camera": "Camera",
          "image_upload_gallery": "Gallery",
          "error_line_format": "Please enter an integer from 10~50",
          "error_max_lenght_format": "Please enter text less than or equal to @max",
          "error_max_value_format": "Please enter a number less than or equal to @max",
          "error_min_lenght_format": "Please enter more than @min characters",
          "error_min_value_format": "Please enter a number greater than @min",
          "error_special": "This APP has set special characters, your input is illegal.",
          "error_login_email_required": "E-mail is required",
          "error_login_email_format": "E-mail format is incorrect",
          "error_login_password_required": "Password is required",
          "error_login_password_format":
              "The Password is at least 8 place, and must contain numeric, uppercase and lowercase letters, and special characters(such as% ¥ # & etc.)!",
          "error_login_w001": "User does not exist, please sign in before logging in",
          "error_login_w002": "Username and password do not match, please try again",
          "checked_at": "Check time",
          "checked_by": "Check user",
          "check_type": "Check type",
          "check_type_scan": "Bar code",
          "check_type_visual": "Visually",
          "check_result_success": "Succeeded",
          "check_result_failure": "Failed",
          "check_result_handler": "Processing",
          "check_deprecated_unique": "The field [@field] does not match the existing unique field setting rules and cannot be saved",
          "check_type_image": "Image"
        },
        'zh_CN': {
          "app_name": "PIT3-APP",
          "description": "盘点系统",
          "empty_msg": "暂无数据~",
          "not_found_name": "未命名",
          "no_more_data": "到底了",
          "loading": "加载中...",
          "reloading": "重新加载中...",
          "pop_title": "提示",
          "pop_tip": "确定退出应用吗？",
          "pop_cancle_btn": "取消",
          "pop_ok_btn": "退出",
          "login_title": "登录",
          "login_input_email": "邮箱",
          "login_input_password": "密码",
          "login_btn": "登录",
          "login_loading": "跳转中...",
          "logout_loading": "正在退出登录...",
          "login_successful": "登录成功，即将进入主程序画面",
          "home_title": "首页",
          "home_tab_title": "首页",
          "drawer_unauth": "未登录",
          "drawer_unauth_tips": "点击头像进入登录页面",
          "drawer_logout": "退出登录",
          "setting_title": "设置",
          "setting_tab_title": "设置",
          "setting_base_title": "基本设置",
          "setting_service_title": "服务器情报设置",
          "setting_service_develop": "测试环境",
          "setting_service_prod": "正式环境",
          "setting_service_custom": "自定义环境",
          "setting_service_address": "API服务器地址",
          "setting_service_file_service_address": "文件服务器地址",
          "setting_language_title": "语言设置",
          "setting_language_select_title": "请选择语言",
          "setting_language_zh": "简体中文",
          "setting_language_en": "English",
          "setting_language_jp": "日本語",
          "setting_language_th": "ไทย",
          "setting_app_title": "App设置",
          "setting_app_select_title": "请选择APP",
          "setting_app_current": "当前APP设置",
          "setting_field_title": "台账显示字段设置",
          "setting_show_field": "一览显示字段",
          "setting_show_field_tips": "一览画面最多只能显示三个字段",
          "setting_datastore_placeholder": "请选择台账",
          "setting_scan_title": "扫描设置",
          "setting_scan_divice_title": "扫描设备",
          "setting_rfid_setting_title": "RFID设置",
          "setting_scan_datastore_title": "扫描台账设置",
          "setting_scan_show_detail": "显示详细",
          "setting_scan_check_in": "直接扫描盘点",
          "setting_scan_gun": "扫描枪",
          "setting_scan_camera": "相机",
          "setting_scan_datastore_placeholder": "请选择盘点台账",
          "setting_scan_field": "扫描字段ID",
          "setting_scan_field_placeholder": "请选择字段ID",
          "setting_scan_update_field_title": "更新字段设置",
          "setting_scan_update_field": "更新字段",
          "setting_scan_update_value": "更新内容",
          "setting_image_title": "图像设置",
          "setting_show_image_label": "显示图片",
          "setting_clear_image_label": "清除缓存",
          "setting_list_title": "一览设置",
          "setting_list_count_title": "显示件数",
          "setting_list_offline_title": "离线模式",
          "setting_update_title": "更新设置",
          "setting_update_version_title": "版本号",
          "setting_update_check_title": "检查更新",
          "setting_privacy_statement_title": "隐私声明",
          "setting_about_title": "关于我们",
          "about_title": "关于我们",
          "scan_title": "扫描",
          "scan_query_loading": "查询中...",
          "scan_not_found_data": "没有查询到数据",
          "scan_check_mismatch": "当前数据和查询到的数据不匹配，请检查！",
          "scan_mutil_tips": "总计@total件，已选择@selected件",
          "scan_rescan_btn": "重新扫描",
          "scan_single_btn": "单条扫描",
          "scan_mutil_btn": "多条扫描",
          "scan_single_net_tips": "必须在网络良好的场合使用",
          "scan_mutil_net_tips": "可以在网络不佳的场合使用",
          "scan_config_not_set": "当前台账未设置扫描配置，无法进行扫描",
          "scan_result_title": "扫描结果：",
          "scan_result_over_title": "已扫描",
          "scan_result_count": "件",
          "scan_result_success": "成功找到",
          "scan_result_failure": "没有找到",
          "swtich_date_tips": "当日或指定日期",
          "search_title": "检索",
          "search_type": "检索类型",
          "search_list_title": "检索条件一览",
          "detail_title": "详细数据",
          "detail_not_check": "没有盘点记录",
          "detail_update_info": "更新信息",
          "detail_create_info": "创建信息",
          "detail_check_info": "盘点信息",
          "search_operator_equal": "等于",
          "search_operator_like": "模糊",
          "search_operator_exist": "存在",
          "search_operator_not_equal": "不等于",
          "search_operator_greater_equal": "大于等于",
          "search_operator_less_equal": "小于等于",
          "search_operator_greater": "大于",
          "search_operator_less": "小于",
          "search_condition_title": "检索条件设置",
          "search_condition_field": "检索字段",
          "search_condition_type": "检索类型",
          "search_condition_value": "检索内容",
          "search_condition_operating": "操作",
          "tempalte_title": "临时数据作成",
          "add_title": "添加",
          "update_title": "更新",
          "error_title": "出错了",
          "info_check_success": "盘点成功",
          "info_add_success": "添加成功",
          "info_update_success": "更新成功",
          "info_save_success": "保存成功",
          "info_scan_success": "扫描成功",
          "info_check_required": "该项目是必须项目，请输入内容",
          "info_file_upload_loading": "文件上传中...",
          "info_check_version_loading": "正在检查更新...",
          "info_no_new_version": "暂时没有更新",
          "info_check_loading": "正在盘点中...",
          "info_checked": "该物品已经扫描过了",
          "info_database_switch_confirm": "台账切换后会将当前的检索条件清空，需要重新设置检索条件。是否进行切换？",
          "info_checked_update_confirm": "变更提示",
          "info_mutil_scan_result": "总计@total条，成功盘点@count条",
          "error_no_data": "不好意思,出错了",
          "error_update_fields_conflict": "当前更新的项目中，与工作流程设定冲突，请修改后重新盘点。",
          "error_net_request_timeout": "网络请求超时或者失败，请检查您的网络",
          "error_net_unsupport": "未知错误发生，请与系统服务商联系",
          "error_server": "服务器无法访问",
          "error_no_net": "网络连接失败，请检查网络",
          "error_check_failure": "盘点失败",
          "error_not_set_scan": "不好意思，你还没有设置扫描的台账信息，请设置后再扫描",
          "error_scan_data_not_match": "扫描结果与盘点设定不匹配",
          "error_unique": "@fields的值已经存在，请重新输入",
          "error_401": "认证失败，请重新登录",
          "error_403": "权限认证失败，请与管理员联系",
          "error_500": "后台服务出现错误，请与管理员联系",
          "placeholder_select": "请选择值",
          "placeholder_input": "请输入内容",
          "placeholder_auto_input": "自动输入",
          "button_file_upload": "文件上传",
          "button_image_upload": "图片上传",
          "button_ok": "确定",
          "button_save": "保存",
          "button_return": "返回",
          "button_cancle": "取消",
          "button_tpl_add": "临时数据追加",
          "button_add": "添加",
          "button_clear": "清除",
          "button_start_search": "开始检索",
          "button_create": "创建",
          "button_new": "作成数据",
          "button_copy": "复制",
          "button_update": "更新",
          "button_check": "盘点",
          "button_eye_check": "目视确认",
          "button_image_check": "图片盘点",
          "button_scan": "扫描",
          "button_search": "检索",
          "button_continue_check": "继续盘点",
          "button_audit": "申请",
          "image_upload_tips": "请选择图片来源",
          "image_upload_camera": "相机",
          "image_upload_gallery": "相册",
          "error_line_format": "请输入10〜50的整数",
          "error_max_lenght_format": "请输入小于等于@max的文字",
          "error_max_value_format": "请输入小于等于@max的数字",
          "error_min_lenght_format": "请输入@min以上文字",
          "error_min_value_format": "请输入大于@min的数字",
          "error_special": "当前APP设定了特殊字符，您的输入不合法。",
          "error_login_email_required": "邮箱不能为空",
          "error_login_email_format": "邮箱格式不正确",
          "error_login_password_required": "密码不能为空",
          "error_login_password_format": "密码至少8位，且必须包含数字大小写字母以及特殊字符(如%￥#&等)！",
          "error_login_w001": "用户不存在，请注册后再登陆",
          "error_login_w002": "用户名和密码不匹配，请重试",
          "checked_at": "盘点时间",
          "checked_by": "盘点者",
          "check_type": "盘点类型",
          "check_type_scan": "条码",
          "check_type_visual": "目视",
          "check_result_success": "成功",
          "check_result_failure": "失败",
          "check_result_handler": "处理中",
          "check_deprecated_unique": "该字段[@field]的类型不符合现有的唯一性字段设置规则，不能保存",
          "check_type_image": "图片"
        },
        'ja_JP': {
          "app_name": "PIT3-APP",
          "description": "棚卸システム",
          "empty_msg": "まだデータがありません~",
          "not_found_name": "無名",
          "no_more_data": "これ以上のデータはありません",
          "loading": "ロード...",
          "reloading": "リロード...",
          "pop_title": "ヒント",
          "pop_tip": "アプリを終了してもよろしいですか？",
          "pop_cancle_btn": "キャンセル",
          "pop_ok_btn": "終了する",
          "login_title": "ログイン",
          "login_input_email": "メール",
          "login_input_password": "パスワード",
          "login_btn": "ログイン",
          "login_loading": "ホームページへ移動...",
          "logout_loading": "ログアウトする...",
          "login_successful": "ログインに成功すると、メインプログラム画面が表示されます",
          "home_title": "ホーム",
          "home_tab_title": "ホーム",
          "drawer_unauth": "ログインしていません",
          "drawer_unauth_tips": "アバターをクリックしてログインページに入ります。",
          "drawer_logout": "ログアウト",
          "setting_title": "設定",
          "setting_tab_title": "設定",
          "setting_base_title": "基本設定",
          "setting_service_title": "サーバー設定",
          "setting_service_develop": "テスト環境",
          "setting_service_prod": "本番環境",
          "setting_service_custom": "カスタム環境",
          "setting_service_address": "APIサーバーアドレス",
          "setting_service_file_service_address": "ファイルサーバーアドレス",
          "setting_language_title": "言語設定",
          "setting_language_select_title": "言語を選択してください",
          "setting_language_zh": "简体中文",
          "setting_language_en": "English",
          "setting_language_jp": "日本語",
          "setting_language_th": "ไทย",
          "setting_app_title": "アプリの設定",
          "setting_app_select_title": "APPを選択してください",
          "setting_app_current": "現在のAPP設定",
          "setting_field_title": "台帳表示フィールド設定",
          "setting_show_field": "リスト表示フィールド",
          "setting_show_field_tips": "リスト画面には最大3つのフィールドしか表示できません",
          "setting_datastore_placeholder": "台帳を選択してください",
          "setting_scan_title": "スキャン設定",
          "setting_scan_divice_title": "スキャン装置",
          "setting_rfid_setting_title": "RFID設定",
          "setting_scan_datastore_title": "スキャンの台帳設定",
          "setting_scan_show_detail": "詳細表示",
          "setting_scan_check_in": "棚卸",
          "setting_scan_gun": "バーコードリーダー",
          "setting_scan_camera": "カメラ",
          "setting_scan_datastore": "スキャン台帳",
          "setting_scan_datastore_placeholder": "棚卸台帳を選択してください",
          "setting_scan_field": "スキャンフィールド",
          "setting_scan_field_placeholder": "フィールドを選択してください",
          "setting_scan_update_field_title": "フィールド設定",
          "setting_scan_update_field": "フィールド",
          "setting_scan_update_value": "内容",
          "setting_image_title": "画像設定",
          "setting_show_image_label": "写真を表示",
          "setting_clear_image_label": "キャッシュをクリア",
          "setting_list_title": "リスト設定",
          "setting_list_count_title": "表示件数",
          "setting_list_offline_title": "オフラインモード",
          "setting_update_title": "更新設定",
          "setting_update_version_title": "バージョン番号",
          "setting_update_check_title": "更新確認",
          "setting_privacy_statement_title": "プライバシーに関する声明",
          "setting_about_title": "私達について",
          "about_title": "私達について",
          "scan_title": "スキャン",
          "scan_query_loading": "クエリ...",
          "scan_not_found_data": "データがありません",
          "scan_check_mismatch": "現在のデータとクエリされたデータが一致しません。確認してください！",
          "scan_mutil_tips": "合計@total、@selectedが選択済み",
          "scan_rescan_btn": "再スキャン",
          "scan_single_btn": "シングルスキャン",
          "scan_mutil_btn": "複数のスキャン",
          "scan_single_net_tips": "良好な通信状態で実行してください",
          "scan_mutil_net_tips": "通信が出来ない環境でも実行は可能です",
          "scan_config_not_set": "スキャンの設定が設定されていません、スキャンできません",
          "scan_result_title": "スキャン結果：",
          "scan_result_over_title": "スキャン済み",
          "scan_result_count": "件",
          "scan_result_success": "成功しました",
          "scan_result_failure": "見つかりません",
          "swtich_date_tips": "当日または指定日付",
          "search_title": "検索",
          "search_type": "検索タイプ",
          "search_list_title": "検索条件のリスト",
          "detail_title": "詳細データ",
          "detail_not_check": "カウント記録なし",
          "detail_update_info": "更新情報",
          "detail_create_info": "新規情報",
          "detail_check_info": "棚卸情報",
          "search_operator_equal": "一致",
          "search_operator_like": "曖昧",
          "search_operator_exist": "存在",
          "search_operator_not_equal": "不一致",
          "search_operator_greater_equal": "以上",
          "search_operator_less_equal": "以下",
          "search_operator_greater": "超える",
          "search_operator_less": "未満",
          "search_condition_title": "検索条件設定",
          "search_condition_field": "フィールド",
          "search_condition_type": "タイプ",
          "search_condition_value": "内容",
          "search_condition_operating": "アクション",
          "tempalte_title": "一時的なデータ作成",
          "add_title": "新規作成",
          "update_title": "更新",
          "error_title": "エラー",
          "info_check_success": "チェックが成功しました",
          "info_add_success": "追加に成功しました",
          "info_update_success": "更新に成功しました",
          "info_save_success": "保存に成功しました",
          "info_scan_success": "成功したスキャン",
          "info_check_required": "この項目は必須です。内容を入力してください",
          "info_file_upload_loading": "ファイルのアップロード...",
          "info_check_version_loading": "更新を確認中...",
          "info_no_new_version": "更新なし",
          "info_check_loading": "棚卸中...",
          "info_checked": "このアイテムはスキャンされました",
          "info_database_switch_confirm": "台帳が切り替えられた後、現在の検索条件はクリアされ、検索条件をリセットする必要があります。 切り替えますか？",
          "info_checked_update_confirm": "変更のリマインダー",
          "info_mutil_scan_result": "合計:@total、棚卸:@count",
          "error_no_data": "申し訳ありませんが、エラーがあります。",
          "error_update_fields_conflict": "現在更新されているプロジェクトがワークフロー設定と競合しています。修正して再テストしてください。",
          "error_net_request_timeout": "ネットワークリクエストがタイムアウトまたは失敗しました。ネットワークを確認してください",
          "error_net_unsupport": "不明なエラーが発生しました。システムサービスプロバイダーに連絡してください",
          "error_server": "サーバーにアクセスできません",
          "error_no_net": "ネットワーク接続に失敗しました。ネットワークを確認してください",
          "error_check_failure": "チェック失敗",
          "error_not_set_scan": "申し訳ありませんが、スキャンした台帳情報を設定していません。設定してからスキャンしてください。",
          "error_scan_data_not_match": "スキャン結果が棚卸設定と一致しません。",
          "error_unique": "@fieldsの値は既に存在します。再入力してください",
          "error_401": "認証に失敗しました。もう一度ログインしてください",
          "error_403": "機関認証に失敗しました。管理者に連絡してください",
          "error_500": "バックグラウンドサービスにエラーがあります。管理者に連絡してください。",
          "placeholder_select": "値を選択してください",
          "placeholder_input": "内容を入力してください",
          "placeholder_auto_input": "自動入力",
          "button_file_upload": "ファイルをアップロード",
          "button_image_upload": "写真をアップロード",
          "button_tpl_add": "仮登録",
          "button_add": "追加",
          "button_clear": "クリア",
          "button_start_search": "検索を開始",
          "button_ok": "はい",
          "button_save": "保存",
          "button_return": "戻る",
          "button_cancle": "キャンセル",
          "button_create": "新規作成",
          "button_new": "作成",
          "button_copy": "コピー作成",
          "button_update": "更新",
          "button_check": "棚卸",
          "button_eye_check": "目視確認",
          "button_image_check": "画像棚卸",
          "button_scan": "バーコード",
          "button_search": "検索",
          "button_continue_check": "棚卸を続行",
          "button_audit": "申し込み",
          "image_upload_tips": "画像ソースを選択してください",
          "image_upload_camera": "カメラ",
          "image_upload_gallery": "写真集",
          "error_line_format": "10〜50の整数を入力してください",
          "error_max_lenght_format": "@max文字以下を入力してください",
          "error_max_value_format": "@max以下の数値を入力してください",
          "error_min_lenght_format": "@min文字以上を入力してください",
          "error_min_value_format": "@minより大きい数値を入力してください",
          "error_special": "APPは特殊文字を設定しており、入力は不正です。",
          "error_login_email_required": "メールボックスを空にすることはできません",
          "error_login_email_format": "メールボックスの形式が正しくありません",
          "error_login_password_required": "パスワードは空にできません",
          "error_login_password_format": "パスワードは少なくとも8桁有り、必ず数字、大文字と小文字、および特殊文字(％¥＃＆など)が含まれております！",
          "error_login_w001": "ユーザーが存在しません。ログインする前にサインインしてください",
          "error_login_w002": "ユーザー名とパスワードが一致しません。もう一度お試しください",
          "checked_at": "棚卸時間",
          "checked_by": "棚卸者",
          "check_type": "棚卸種類",
          "check_type_scan": "バーコード",
          "check_type_visual": "目視",
          "check_result_success": "成功",
          "check_result_failure": "失敗",
          "check_result_handler": "処理",
          "check_deprecated_unique": "項目[@field]はユニーク項目の規約に違反しているため、保存できません。",
          "check_type_image": "画像"
        },
        'th_TH': {
          "app_name": "PIT3-APP",
          "description": "ระบบสินค้าคงคลัง",
          "empty_msg": "ยังไม่มีข้อมูล~",
          "not_found_name": "ไม่มีชื่อ",
          "no_more_data": "ในที่สุด",
          "loading": "กำลังโหลด...",
          "reloading": "กำลังโหลด...",
          "pop_title": "คำใบ้",
          "pop_tip": "คุณแน่ใจหรือว่าต้องการออกจากแอป",
          "pop_cancle_btn": "ยกเลิก",
          "pop_ok_btn": "เลิก",
          "login_title": "เข้าสู่ระบบ",
          "login_input_email": "จดหมาย",
          "login_input_password": "รหัสผ่าน",
          "login_btn": "เข้าสู่ระบบ",
          "login_loading": "กระโดด ... ",
          "logout_loading": "ออกจากระบบ...",
          "login_successful": "เข้าสู่ระบบสำเร็จ กำลังจะเข้าสู่หน้าจอหลักของโปรแกรม",
          "home_title": "หน้าแรก",
          "home_tab_title": "หน้าแรก",
          "drawer_unauth": "ไม่ได้เข้าสู่ระบบ",
          "drawer_unauth_tips": "คลิกที่รูปประจำตัวเพื่อเข้าสู่หน้าเข้าสู่ระบบ",
          "drawer_logout": "ออกจากระบบ",
          "setting_title": "ติดตั้ง",
          "setting_tab_title": "ติดตั้ง",
          "setting_base_title": "การตั้งค่าพื้นฐาน",
          "setting_service_title": "การตั้งค่าเซิร์ฟเวอร์ข่าวกรอง",
          "setting_service_develop": "สภาพแวดล้อมการทดสอบ",
          "setting_service_prod": "สภาพแวดล้อมที่เป็นทางการ",
          "setting_service_custom": "สภาพแวดล้อมที่กำหนดเอง",
          "setting_service_address": "ที่อยู่เซิร์ฟเวอร์ API",
          "setting_service_file_service_address": "ที่อยู่ไฟล์เซิร์ฟเวอร์",
          "setting_language_title": "ตั้งค่าภาษา",
          "setting_language_select_title": "กรุณาเลือกภาษา",
          "setting_language_zh": "简体中文",
          "setting_language_en": "English",
          "setting_language_jp": "日本語",
          "setting_language_th": "ไทย",
          "setting_app_title": "การตั้งค่าแอพ",
          "setting_app_select_title": "กรุณาเลือก APP",
          "setting_app_current": "การตั้งค่าแอปปัจจุบัน",
          "setting_field_title": "การตั้งค่าฟิลด์แสดงบัญชีแยกประเภท",
          "setting_show_field": "แสดงฟิลด์ได้อย่างรวดเร็ว",
          "setting_show_field_tips": "หน้าจอรายการสามารถแสดงได้สูงสุดสามฟิลด์เท่านั้น",
          "setting_datastore_placeholder": "กรุณาเลือกบัญชีแยกประเภท",
          "setting_scan_title": "การตั้งค่าการสแกน",
          "setting_scan_divice_title": "สแกนหาอุปกรณ์",
          "setting_rfid_setting_title": "การตั้งค่า RFID",
          "setting_scan_datastore_title": "สแกนการตั้งค่าบัญชีแยกประเภท",
          "setting_scan_show_detail": "แสดงรายละเอียด",
          "setting_scan_check_in": "สแกนสินค้าคงคลังโดยตรง",
          "setting_scan_gun": "ปืนสแกนเนอร์",
          "setting_scan_camera": "กล้อง",
          "setting_scan_datastore_placeholder": "กรุณาเลือกบัญชีสินค้าคงคลัง",
          "setting_scan_field": "สแกน ID ฟิลด์",
          "setting_scan_field_placeholder": "กรุณาเลือก ID ฟิลด์",
          "setting_scan_update_field_title": "อัปเดตการตั้งค่าฟิลด์",
          "setting_scan_update_field": "ปรับปรุงสนาม",
          "setting_scan_update_value": "อัปเดตเนื้อหา",
          "setting_image_title": "การตั้งค่าภาพ",
          "setting_show_image_label": "แสดงภาพ",
          "setting_clear_image_label": "ล้างแคช",
          "setting_list_title": "การตั้งค่าภาพรวม",
          "setting_list_count_title": "แสดงจำนวนชิ้น",
          "setting_list_offline_title": "โหมดออฟไลน์",
          "setting_update_title": "ปรับปรุงการตั้งค่า",
          "setting_update_version_title": "หมายเลขเวอร์ชัน",
          "setting_update_check_title": "ตรวจสอบสำหรับการอัพเดต",
          "setting_privacy_statement_title": "คำชี้แจงสิทธิ์ส่วนบุคคล",
          "setting_about_title": "เกี่ยวกับเรา",
          "about_title": "เกี่ยวกับเรา",
          "scan_title": "การสแกน",
          "scan_query_loading": "สอบถาม...",
          "scan_not_found_data": "ไม่พบข้อมูล",
          "scan_check_mismatch": "ข้อมูลปัจจุบันไม่ตรงกับข้อมูลที่สอบถาม โปรดตรวจสอบ!",
          "scan_mutil_tips": "รวม @total ชิ้น, @selected ชิ้นที่เลือก",
          "scan_rescan_btn": "สแกนใหม่",
          "scan_single_btn": "สแกนครั้งเดียว",
          "scan_mutil_btn": "การสแกนหลายครั้ง",
          "scan_single_net_tips": "ต้องใช้ในเครือข่ายที่ดี",
          "scan_mutil_net_tips": "สามารถใช้ได้ในสถานการณ์ที่เครือข่ายไม่ดี",
          "scan_config_not_set": "บัญชีปัจจุบันไม่มีการตั้งค่าการสแกนและไม่สามารถสแกนได้",
          "scan_result_title": "ผลการสแกน:",
          "scan_result_over_title": "สแกน",
          "scan_result_count": "ชิ้นส่วน",
          "scan_result_success": "พบสำเร็จ",
          "scan_result_failure": "หาไม่เจอ",
          "swtich_date_tips": "วันนี้หรือวันที่กำหนด",
          "search_title": "ค้นหา",
          "search_type": "ประเภทการค้นหา",
          "search_list_title": "รายการเงื่อนไขการค้นหา",
          "detail_title": "ข้อมูลโดยละเอียด",
          "detail_not_check": "ไม่มีบันทึกสินค้าคงคลัง",
          "detail_update_info": "อัปเดตข้อมูล",
          "detail_create_info": "สร้างข้อความ",
          "detail_check_info": "ข้อมูลสินค้าคงคลัง",
          "search_operator_equal": "เท่ากัน",
          "search_operator_like": "คลุมเครือ",
          "search_operator_exist": "มีอยู่",
          "search_operator_not_equal": "ไม่เท่ากับ",
          "search_operator_greater_equal": "มากกว่าหรือเท่ากับ",
          "search_operator_less_equal": "น้อยกว่าหรือเท่ากับ",
          "search_operator_greater": "มากกว่า",
          "search_operator_less": "น้อยกว่า",
          "search_condition_title": "การตั้งค่าเงื่อนไขการค้นหา",
          "search_condition_field": "ช่องค้นหา",
          "search_condition_type": "ประเภทการค้นหา",
          "search_condition_value": "ค้นหาเนื้อหา",
          "search_condition_operating": "ดำเนินงาน",
          "tempalte_title": "การสร้างข้อมูลชั่วคราว",
          "add_title": "เพิ่ม",
          "update_title": "ต่ออายุ",
          "error_title": "ข้อผิดพลาด",
          "info_check_success": "สินค้าคงคลังที่ประสบความสำเร็จ",
          "info_add_success": "เพิ่มสำเร็จ",
          "info_update_success": "อัปเดตเสร็จสิ้น",
          "info_save_success": "บันทึกสำเร็จ",
          "info_scan_success": "สแกนสำเร็จ",
          "info_check_required": "จำเป็นต้องมีรายการนี้ โปรดป้อนเนื้อหา",
          "info_file_upload_loading": "กำลังอัปโหลดไฟล์...",
          "info_check_version_loading": "ตรวจสอบการปรับปรุง...",
          "info_no_new_version": "ไม่มีการอัปเดตสำหรับตอนนี้",
          "info_check_loading": "ในการตรวจนับสต็อค ... ",
          "info_checked": "สแกนรายการแล้ว",
          "info_database_switch_confirm":
              "หลังจากเปลี่ยนบัญชีแยกประเภทแล้ว เงื่อนไขการค้นหาปัจจุบันจะถูกล้าง และจำเป็นต้องรีเซ็ตเงื่อนไขการค้นหา คุณต้องการเปลี่ยนหรือไม่",
          "info_checked_update_confirm": "เปลี่ยนเคล็ดลับ",
          "info_mutil_scan_result": "รวม @total นับ @count สำเร็จ",
          "error_no_data": "ขอโทษมีบางอย่างผิดพลาด",
          "error_update_fields_conflict": "ในโครงการที่อัปเดตในปัจจุบัน ขัดแย้งกับการตั้งค่าเวิร์กโฟลว์ โปรดแก้ไขและนับใหม่",
          "error_net_request_timeout": "คำขอเครือข่ายหมดเวลาหรือล้มเหลว โปรดตรวจสอบเครือข่ายของคุณ",
          "error_net_unsupport": "เกิดข้อผิดพลาดที่ไม่ทราบสาเหตุ โปรดติดต่อผู้ให้บริการระบบ",
          "error_server": "เซิร์ฟเวอร์ไม่สามารถเข้าถึงได้",
          "error_no_net": "การเชื่อมต่อเครือข่ายล้มเหลว โปรดตรวจสอบเครือข่าย",
          "error_check_failure": "สินค้าคงคลังล้มเหลว",
          "error_not_set_scan": "ขออภัย คุณยังไม่ได้ตั้งค่าข้อมูลบัญชีสำหรับการสแกน โปรดตั้งค่าแล้วสแกน",
          "error_scan_data_not_match": "ผลการสแกนไม่ตรงกับการตั้งค่าสินค้าคงคลัง",
          "error_unique": "ค่าของ @fields มีอยู่แล้ว โปรดป้อนใหม่",
          "error_401": "การตรวจสอบล้มเหลว กรุณาเข้าสู่ระบบใหม่อีกครั้ง",
          "error_403": "การตรวจสอบสิทธิ์ล้มเหลว โปรดติดต่อผู้ดูแลระบบ",
          "error_500": "เกิดข้อผิดพลาดในบริการพื้นหลัง โปรดติดต่อผู้ดูแลระบบ",
          "placeholder_select": "กรุณาเลือกค่า",
          "placeholder_input": "กรุณาใส่เนื้อหา",
          "placeholder_auto_input": "ป้อนข้อมูลอัตโนมัติ",
          "button_file_upload": "อัปโหลดไฟล์",
          "button_image_upload": "อัปโหลดรูปภาพ",
          "button_ok": "แน่นอน",
          "button_save": "บันทึก",
          "button_return": "กลับ",
          "button_cancle": "ยกเลิก",
          "button_tpl_add": "ผนวกข้อมูลชั่วคราว",
          "button_add": "เพิ่ม",
          "button_clear": "แจ่มใส",
          "button_start_search": "เริ่มการค้นหา",
          "button_create": "สร้าง",
          "button_new": "สร้างข้อมูล",
          "button_copy": "สำเนา",
          "button_update": "ต่ออายุ",
          "button_check": "รายการสิ่งของ",
          "button_eye_check": "การยืนยันด้วยภาพ",
          "button_image_check": "คลังภาพ",
          "button_scan": "การสแกน",
          "button_search": "ค้นหา",
          "button_continue_check": "ต่อสินค้าคงคลัง",
          "button_audit": "แอปพลิเคชัน",
          "image_upload_tips": "กรุณาเลือกแหล่งที่มาของภาพ",
          "image_upload_camera": "กล้อง",
          "image_upload_gallery": "อัลบั้ม",
          "error_line_format": "โปรดป้อนจำนวนเต็มตั้งแต่ 10 ถึง 50",
          "error_max_lenght_format": "โปรดป้อนข้อความที่น้อยกว่าหรือเท่ากับ @max",
          "error_max_value_format": "โปรดป้อนตัวเลขที่น้อยกว่าหรือเท่ากับ @max",
          "error_min_lenght_format": "กรุณาป้อนข้อความด้านบน @min",
          "error_min_value_format": "โปรดป้อนตัวเลขที่มากกว่า @min",
          "error_special": "แอปปัจจุบันได้ตั้งค่าอักขระพิเศษ การป้อนข้อมูลของคุณไม่ถูกต้อง",
          "error_login_email_required": "อีเมลต้องไม่ว่างเปล่า",
          "error_login_email_format": "รูปแบบอีเมลไม่ถูกต้อง",
          "error_login_password_required": "รหัสผ่านไม่สามารถเว้นว่างได้",
          "error_login_password_format": "รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษร และต้องมีตัวเลข ตัวพิมพ์ใหญ่ และอักขระพิเศษ (เช่น %￥#& ฯลฯ)!",
          "error_login_w001": "ไม่มีผู้ใช้ กรุณาลงทะเบียนและเข้าสู่ระบบ",
          "error_login_w002": "ชื่อผู้ใช้และรหัสผ่านไม่ตรงกัน โปรดลองอีกครั้ง",
          "checked_at": "นับเวลา",
          "checked_by": "นักประดิษฐ์",
          "check_type": "ประเภทสินค้าคงคลัง",
          "check_type_scan": "บาร์โค้ด",
          "check_type_visual": "ภาพ",
          "check_result_success": "ความสำเร็จ",
          "check_result_failure": "ล้มเหลว",
          "check_result_handler": "กำลังประมวลผล",
          "check_deprecated_unique": "ประเภทของฟิลด์ [@field] ไม่สอดคล้องกับกฎการตั้งค่าฟิลด์เฉพาะที่มีอยู่และไม่สามารถบันทึกได้",
          "check_type_image": "รูปภาพ"
        }
      };
}