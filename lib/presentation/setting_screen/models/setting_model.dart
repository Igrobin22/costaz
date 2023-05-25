import 'package:get/get.dart';
import 'setting_item_model.dart';

class SettingModel {
  RxList<SettingItemModel> settingItemList =
      RxList.generate(2, (index) => SettingItemModel());
}
