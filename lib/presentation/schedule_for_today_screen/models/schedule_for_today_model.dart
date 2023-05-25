import 'package:get/get.dart';
import 'listgrouptwo_item_model.dart';

class ScheduleForTodayModel {
  RxList<ListgrouptwoItemModel> listgrouptwoItemList =
      RxList.generate(2, (index) => ListgrouptwoItemModel());
}
