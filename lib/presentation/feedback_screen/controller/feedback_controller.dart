import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/feedback_screen/models/feedback_model.dart';

class FeedbackController extends GetxController {
  Rx<FeedbackModel> feedbackModelObj = FeedbackModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
