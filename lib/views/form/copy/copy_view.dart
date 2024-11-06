library update_view;

import 'package:pit3_app/common/setting.dart';
import 'package:pit3_app/core/models/field.dart';
import 'package:pit3_app/core/models/items.dart';
import 'package:pit3_app/core/models/option.dart';
import 'package:pit3_app/core/models/search_condition.dart';
import 'package:pit3_app/core/models/user.dart';
import 'package:get/get.dart';
import 'package:pit3_app/core/models/common_model.dart';
import 'package:pit3_app/logic/http/api_service.dart';
import 'package:pit3_app/util/format_util.dart';
import 'package:pit3_app/util/map_util.dart';
import 'package:pit3_app/util/translation_util.dart' as ts;
import 'package:pit3_app/widgets/dialog/reactive_dropdown_dialog.dart';
import 'package:pit3_app/widgets/empty/empty_widget.dart';
import 'package:pit3_app/widgets/empty/not_found_widget.dart';
import 'package:pit3_app/widgets/input/dropdown_dialog.dart';
import 'package:pit3_app/widgets/item/item_view.dart';
import 'package:pit3_app/widgets/loading/loading_indicator.dart';
import 'package:pit3_app/widgets/loading/upload_progress.dart';
import 'package:pit3_app/widgets/network/network_check.dart';
import 'package:reactive_advanced_switch/reactive_advanced_switch.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'copy_view_model.dart';

part 'copy_mobile.dart';

class CopyView extends StatelessWidget {
  final String datastoreId;
  final String itemId;

  CopyView({
    Key key,
    @required this.datastoreId,
    @required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    CopyViewModel viewModel = CopyViewModel();
    return ViewModelBuilder<CopyViewModel>.reactive(
        viewModelBuilder: () => viewModel,
        onModelReady: (viewModel) {
          viewModel.init(datastoreId, itemId);
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _CopyMobile(viewModel),
          );
        });
  }
}