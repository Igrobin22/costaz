import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';
import 'package:costazandroid/core/app_export.dart';
class ClassDetails extends GetWidget<SetupScheduleController> {

  @override
  Widget build(BuildContext context) {
    int n=Get.arguments;


    return Scaffold( backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        title: Text('ClassDetails', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35.0),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigoAccent, Colors.indigo],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35.0),
            ),
          ),
        ),
      ),
      body:
      Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(
                'Class Name',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(controller.classes.value[n].classname!),
            ),
            ListTile(
              title: Text(
                'Subject',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(controller.classes.value[n].subject!),
            ),
            ListTile(
              title: Text(
                'Room No',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(controller.classes.value[n].roomno!),
            ),
            ListTile(
              title: Text(
                'Department',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(controller.classes.value[n].department!),
            ),

            ListTile(
              title: Text(
                'Time Range',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '${controller.classes.value[n].times?.format(context) ?? ''} - ${controller.classes.value[n].timee?.format(context) ?? ''}',
              ),
            ),
            ListTile(
              title: Text(
                'Class is on',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(controller.classes.value[n].numbers.toString()),
            ),
          ],
        ),
      ),
    );
  }
}