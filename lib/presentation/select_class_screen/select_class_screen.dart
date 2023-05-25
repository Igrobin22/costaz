import '../select_class_screen/widgets/selectclass_item_widget.dart';
import 'controller/select_class_controller.dart';
import 'models/selectclass_item_model.dart';
import 'package:costazandroid/data/classes_list.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';
class SelectClassScreen extends GetWidget<SelectClassController> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 91, top: 20, right: 91, bottom: 10),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo40001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.customBorderBL35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCalenderisocolor,
                                        height: getVerticalSize(80),
                                        width: getHorizontalSize(80),
                                        margin: getMargin(left: 50)),
                                    Container(
                                        height: getVerticalSize(64),
                                        width: getHorizontalSize(171),
                                        margin: getMargin(top: 1, bottom: 26),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomCenter,
                                                  child: Text("lbl_select_class".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendMedium38)),

                                            ]))
                                  ]))),




                         Expanded(
                          child:
                          Obx(() => ListView.builder(
                            itemCount: controller.firstController.itemCount.value,
                            itemBuilder: ((context, index) {
                              return ListTile(
                                title: InkWell(
                                  onTap: () =>Get.toNamed(
                                    AppRoutes.attendanceScreen,
                                    arguments: index,
                                  ),
                                  child: Text(
                                    controller.firstController.classes.value[index].classname!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  controller.firstController.classes.value[index].subject!,
                                  style: TextStyle(fontSize: 16),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete, color: Colors.red),
                                  onPressed: () => controller.firstController.removeClasses(index),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                tileColor: Colors.white,
                                selectedTileColor: Colors.grey.shade100,
                              );
                            }),
                          )),
                        ),


                    ])





            ),

            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                onTap: navigatetomaine,
                text: "lbl_back".tr,
                margin: getMargin(left: 20, right: 21, bottom: 34),
                variant: ButtonVariant.OutlineIndigoA100_1,
                fontStyle: ButtonFontStyle.InterRegular12IndigoA100)));
  }

  navigatetoattendance() {
    Get.toNamed(AppRoutes.attendanceScreen );
  }
  navigatetomaine() {
    Get.toNamed(AppRoutes.mainScreen);
  }

}



