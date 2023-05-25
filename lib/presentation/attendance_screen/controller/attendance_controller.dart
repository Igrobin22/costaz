import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/attendance_screen/models/attendance_model.dart';
import 'package:gsheets/gsheets.dart';

import '../../setup_schedule_screen/controller/setup_schedule_controller.dart';

class AttendanceController extends GetxController {
  final SetupScheduleController firstController = Get.find();
  Rx<AttendanceModel> attendanceModelObj = AttendanceModel().obs;
  List<RxBool> checkboxes = List.generate(57, (_) => false.obs);
  void toggleCheckbox(int index) {
    checkboxes[index].value = !checkboxes[index].value;}

  final index = Get.arguments as int;
  static const _credentials=r'''{
  "type": "service_account",
  "project_id": "teacher-assistant-app-379619",
  "private_key_id": "cbfb7d995454db1b3216319c5e9d6b7dbb92517b",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDNm2+qRaVV04Ln\n0xfZGpAU3/r8Zpt2+jj3FyvZ4WsaH55H8INflEwdpan0BVfPOIPVXn2zPUUxIA3x\nv1P5H6MJG1sjpVWgw3yhEdnR1zUyn8phU1kQCFD+tf8ywThT7tInVT0qnzxP+1CF\n7c2P6O7ikTjgFk4RFwAuXSaznpo8ZsnUkUeWgSqUVkoT7+fg1aoQI29AL1IDmILr\n5RcYC37nG0Hh8oY63ezZjpnE0u6tRQxy94mfnfmfuxZZhTvRI4iqf0BBmUK0EXmK\nZ/bQkCWLHdLIVzCeB6wn6odIJdr2uO/ZE/HOlmIpCZ9RmhRs/bHcjuL1+Cy03Wf9\nSCAn0/phAgMBAAECggEAK9xPN18RFJyAzexxp24rs1BOjd5jpr9dPJS0VY/pVZLO\nJKGRnOeZTy/CcBxdrYZsVS2Jmh1lb8PbRalfhAL0OCKeUB3ahOd+5CtXMJT8s7Zz\nqUxq8OkdQiDX9l9SoVEOgraDzF5YsuU1OcTPd7Ykk6+QFvmbILkr4Dgd4+5fD6gp\novA78cumeiRisBv0ykGCC+adl2HK6ZeE49jQXo68oAi0q3cQbfF36k++ktGuO4xW\nenDGSzp4J4KIdKdd+IRqEE8yIwh9cBW6Q8DOhPwaTjRP3ukgCfGmxETJl4rYL3lP\nIyHv5f4B2DPhl3ttEsfTIY/s3WQevq4Czf9OTGUbmQKBgQD11QuhOeX4oqfHSqpH\nG/B3c37YtReqosBbaTS7e3qxJ+stTGBg2gp0m1zeBA/XZAvE7dIR/sYF3+dVJ8sT\ncuYqR0ru7HxAUfgDaZl1IdiJeG8PvH5VViDCnRbLt4IXn9f8bNkXOMmoyqkhM3Cs\nczJPQJXt3684AXm9VGTAV0ucRQKBgQDWHHl3Q8ZEaiwJk0BR0QCyE/SzJT9djwkg\nxkDpbNg7f9MvEXzezCi9DSdmGeDMyrN6k2pShUMVhlXuBEXXsOYPL/lWl77aglet\nMxIf+ka3NreMxuMaRSuOo0DVXl4Opcgnyz7WAjaHgNyqL69sya8BIa4TMa3IuuIR\nu8GAlC49bQKBgQCWbKTPJQSJnc4YbqG/HWOJVEzcAgPXT/twc/HmfupWmNyZPVEE\nMqePLromyEmBPSDOgc+3XzSAx79gJhdncTlRyYoapO5q1T1zqRxTxkAf7mfXMzoC\nsc8eBs26HjImjpK1TU2RnhgXhtrzC+z4OQ0h3Z1gjy1CkfSSW5/C6ifEGQKBgDDl\nydux77q6IJqDNYI54BXLNuweyozcWLJSdIqan/teouUx8jmTmI4sTd4kdNFwTXLl\n7bcw1fQ5fLBh621p6fB3/VKITz7p24ojirUg3DuFVH/jAASE3YCyyeCwr3xa4g4s\nfYo0cS2bAUogn8iRetUgUvfxNYYNIAn6viNWNAU1AoGBALO/eeoZLMOfXEtk+1+b\nDm84DBhHRHYCKs31XUCRfU/Ui71xXS9lCn7K5fuLsu6+P7b2H1KTub9SZE7RGhHD\nuAljOUpEzJAM1D0TR3E/EJo1Per4hTdAq0oImo8P/tef6XpIjSvD4e9Lm6W+22bg\nWHf0rWqd1MZ2UIZ6AMBR3JZW\n-----END PRIVATE KEY-----\n",
  "client_email": "studentsheet@teacher-assistant-app-379619.iam.gserviceaccount.com",
  "client_id": "109078255309028890943",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/studentsheet%40teacher-assistant-app-379619.iam.gserviceaccount.com"
}''';
  static final _sheetID='1Tg9kwewoJSTwTJVAMAibpKV40PR8LWbjyy_xWggI3Ko';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? classsheet;

  static Future<Worksheet> getWorkSheet(

      Spreadsheet sheet,{required String title,}
      )async{
    try{
      return await sheet.addWorksheet(title);
    } catch(e){
      return sheet.worksheetByTitle(title)!;
    }
  }

  List<String> _columnValues = [];

  Future<bool> loadAll() async {
    final sheet = await _gsheets.spreadsheet(_sheetID);
    classsheet = await getWorkSheet(sheet, title: 'Classname');
    final firstrow = AttendanceModel.getfields();
    classsheet!.values.insertRow(1, firstrow);

    // Get the values in the first column of the worksheet
    final startRow = _columnValues.length + 2; // Start from the next row after the last added row
    final endRow = classsheet!.rowCount;
    final values = await classsheet!.values.column(1, fromRow: startRow);
    final newColumnValues = values.cast<String>().toList();

    // Add new values to the nm list
    for (final value in newColumnValues) {
      if (!_columnValues.contains(value)) {
        nm.add(value);
      }
    }

    // Update the list of column values
    _columnValues.addAll(newColumnValues);

    return true;
  }


  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

