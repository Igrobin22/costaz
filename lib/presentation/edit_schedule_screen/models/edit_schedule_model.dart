import 'package:get/get.dart';
import 'editschedule_item_model.dart';

class EditScheduleModel {
  RxList<EditscheduleItemModel> editscheduleItemList =
      RxList.generate(5, (index) => EditscheduleItemModel());
}
