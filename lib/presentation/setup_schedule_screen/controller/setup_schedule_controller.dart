

import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/models/setup_schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:costazandroid/data/classes_list.dart';
import 'package:intl/intl.dart';
import 'package:costazandroid/presentation/main_screen/main_screen.dart';

import '../../schedule_for_today_screen/controller/schedule_for_today_controller.dart';
class SetupScheduleController extends GetxController {

  Rx<List<ClassesList>>classes=Rx<List<ClassesList>>([]);
  var selectedTime = TimeOfDay.now().obs;
  var selectedTime2 = TimeOfDay.now().obs;
  TextEditingController classnameTextEditingController = TextEditingController();
  TextEditingController subjectTextEditingController = TextEditingController();
  TextEditingController roomnoTextEditingController = TextEditingController();
  TextEditingController departmentTextEditingController = TextEditingController();
  List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  List<bool> buttonStates = List.generate(7, (_) => false);


  List<String> selectedDays = [];
  List<String> sd = [];
  void toggleButton(int index) {
    buttonStates[index] = !buttonStates[index];
    if (buttonStates[index]==true) {
      selectedDays.add(days[index]);
    } else {
      selectedDays.remove(days[index]);
    }
    sd = [...selectedDays];
  }
  late ClassesList classesList;
  var itemCount = 0.obs;




  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onInit() {
    n=0;
    super.onInit();
  }

  void upcom(){
    final now = DateTime.now();
    final currentDay = DateFormat('EEEE').format(now);
for(int k=0;k<classes.value.length;k++){
  if(classes.value[k].numbers.contains(currentDay)){
     subject=classes.value[k].subject!;
     dpt=classes.value[k].department!;
     roomno=classes.value[k].roomno!;
     st = classes.value[k].times;
     et =classes.value[k].timee;

  }

}



  }
  @override
  void onClose() {
    super.onClose();
    n=1;
    classnameTextEditingController.dispose();
    subjectTextEditingController.dispose();
    roomnoTextEditingController.dispose();
    departmentTextEditingController.dispose();



  }


  addClasses(String classname,String subject,String roomno,String department,var timeS,var TimeE, List<String> days) {
  classesList= ClassesList(classname: classname, subject: subject, roomno: roomno, department: department, times: timeS,timee: TimeE, numbers: days );
  classes.value.add(classesList);
  itemCount.value = classes.value.length;
  classnameTextEditingController.clear();
  subjectTextEditingController.clear();
  roomnoTextEditingController.clear();
  departmentTextEditingController.clear();
  selectedTime = TimeOfDay.now().obs;
  selectedTime2 = TimeOfDay.now().obs;


  }
  removeClasses(int index) {
  classes.value.removeAt(index);
  itemCount.value = classes.value.length;

  }
  chooseTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'Select Start Time',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
    }
  }

  chooseTime2() async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime2.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'Select End Time',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime2.value) {
      selectedTime2.value = pickedTime;
    }

  }


  }






