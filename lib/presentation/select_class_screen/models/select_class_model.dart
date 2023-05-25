import 'package:get/get.dart';
import 'selectclass_item_model.dart';
import 'package:costazandroid/core/constants/constants.dart';
class SelectClassModel {
  RxList<SelectclassItemModel> selectclassItemList =
  RxList.generate(count+1, (index) => SelectclassItemModel(n));

}

