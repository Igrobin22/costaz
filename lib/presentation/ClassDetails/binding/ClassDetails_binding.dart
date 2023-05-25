import 'package:get/get.dart';

import '../ClassDetails.dart';

class ClassDetailsbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClassDetails());
  }
}