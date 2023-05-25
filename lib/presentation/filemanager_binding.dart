import 'package:get/get.dart';

import 'package:costazandroid/presentation/file_manager.dart';

class Classfilemanagersbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilesScreen());
  }
}