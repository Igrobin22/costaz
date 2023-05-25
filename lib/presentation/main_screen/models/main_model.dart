import 'package:get/get.dart';
import 'mainscreen_item_model.dart';

class MainModel {
  RxList<MainscreenItemModel> mainscreenItemList =
      RxList.generate(1, (index) => MainscreenItemModel());
}
