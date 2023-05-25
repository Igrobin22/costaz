import 'package:costazandroid/presentation/splash_screen/splash_screen.dart';
import 'package:costazandroid/presentation/splash_screen/binding/splash_binding.dart';
import 'package:costazandroid/presentation/schedule_screen/schedule_screen.dart';
import 'package:costazandroid/presentation/schedule_screen/binding/schedule_binding.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/setup_schedule_screen.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/binding/setup_schedule_binding.dart';
import 'package:costazandroid/presentation/data_template_screen/data_template_screen.dart';
import 'package:costazandroid/presentation/data_template_screen/binding/data_template_binding.dart';
import 'package:costazandroid/presentation/select_class_screen/select_class_screen.dart';
import 'package:costazandroid/presentation/select_class_screen/binding/select_class_binding.dart';
import 'package:costazandroid/presentation/main_screen/main_screen.dart';
import 'package:costazandroid/presentation/main_screen/binding/main_binding.dart';
import 'package:costazandroid/presentation/attendance_screen/attendance_screen.dart';
import 'package:costazandroid/presentation/attendance_screen/binding/attendance_binding.dart';
import 'package:costazandroid/presentation/edit_schedule_screen/edit_schedule_screen.dart';
import 'package:costazandroid/presentation/edit_schedule_screen/binding/edit_schedule_binding.dart';
import 'package:costazandroid/presentation/edit_schedule_two_screen/edit_schedule_two_screen.dart';
import 'package:costazandroid/presentation/edit_schedule_two_screen/binding/edit_schedule_two_binding.dart';
import 'package:costazandroid/presentation/profile_screen/profile_screen.dart';
import 'package:costazandroid/presentation/profile_screen/binding/profile_binding.dart';
import 'package:costazandroid/presentation/attendance_overall_result_screen/attendance_overall_result_screen.dart';
import 'package:costazandroid/presentation/attendance_overall_result_screen/binding/attendance_overall_result_binding.dart';
import 'package:costazandroid/presentation/setting_screen/setting_screen.dart';
import 'package:costazandroid/presentation/setting_screen/binding/setting_binding.dart';
import 'package:costazandroid/presentation/about_screen/about_screen.dart';
import 'package:costazandroid/presentation/about_screen/binding/about_binding.dart';
import 'package:costazandroid/presentation/feedback_screen/feedback_screen.dart';
import 'package:costazandroid/presentation/feedback_screen/binding/feedback_binding.dart';
import 'package:costazandroid/presentation/login_screen/login_screen.dart';
import 'package:costazandroid/presentation/login_screen/binding/login_binding.dart';
import 'package:costazandroid/presentation/faq_screen/faq_screen.dart';
import 'package:costazandroid/presentation/faq_screen/binding/faq_binding.dart';
import 'package:costazandroid/presentation/schedule_for_today_screen/schedule_for_today_screen.dart';
import 'package:costazandroid/presentation/schedule_for_today_screen/binding/schedule_for_today_binding.dart';
import 'package:costazandroid/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:costazandroid/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:costazandroid/presentation/ClassDetails/ClassDetails.dart';
import 'package:costazandroid/presentation/file_manager.dart';
import 'package:costazandroid/presentation/filemanager_binding.dart';



import '../presentation/ClassDetails/binding/ClassDetails_binding.dart';
class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String file_manager = '/file_manager';

  static const String ClassDetailes = '/ClassDetails';
  static const String scheduleScreen = '/schedule_screen';

  static const String setupScheduleScreen = '/setup_schedule_screen';

  static const String dataTemplateScreen = '/data_template_screen';

  static const String selectClassScreen = '/select_class_screen';

  static const String mainScreen = '/main_screen';

  static const String attendanceScreen = '/attendance_screen';

  static const String editScheduleScreen = '/edit_schedule_screen';

  static const String editScheduleTwoScreen = '/edit_schedule_two_screen';

  static const String profileScreen = '/profile_screen';

  static const String attendanceOverallResultScreen =
      '/attendance_overall_result_screen';

  static const String settingScreen = '/setting_screen';

  static const String aboutScreen = '/about_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String loginScreen = '/login_screen';

  static const String faqScreen = '/faq_screen';

  static const String scheduleForTodayScreen = '/schedule_for_today_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: file_manager,
      page: () => FilesScreen(),
      bindings: [
        Classfilemanagersbinding(),
      ],
    ),

    GetPage(
      name: scheduleScreen,
      page: () => ScheduleScreen(),
      bindings: [
        ScheduleBinding(),
      ],
    ),
    GetPage(
      name: setupScheduleScreen,
      page: () => SetupScheduleScreen(),
      bindings: [
        SetupScheduleBinding(),
      ],
    ),
    GetPage(
      name: dataTemplateScreen,
      page: () => DataTemplateScreen(),
      bindings: [
        DataTemplateBinding(),
      ],

    ),

    GetPage(
      name: selectClassScreen,
      page: () => SelectClassScreen(),
      bindings: [
        SelectClassBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: attendanceScreen,
      page: () => AttendanceScreen(),
      bindings: [
        AttendanceBinding(),
      ],
    ),
    GetPage(
      name: editScheduleScreen,
      page: () => EditScheduleScreen(),
      bindings: [
        EditScheduleBinding(),
      ],
    ),
    GetPage(
      name: editScheduleTwoScreen,
      page: () => EditScheduleTwoScreen(),
      bindings: [
        EditScheduleTwoBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: attendanceOverallResultScreen,
      page: () => AttendanceOverallResultScreen(),
      bindings: [
        AttendanceOverallResultBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: feedbackScreen,
      page: () => FeedbackScreen(),
      bindings: [
        FeedbackBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: faqScreen,
      page: () => FaqScreen(),
      bindings: [
        FaqBinding(),
      ],
    ),
    GetPage(
      name: scheduleForTodayScreen,
      page: () => ScheduleForTodayScreen(),
      bindings: [
        ScheduleForTodayBinding(),
      ],
    ),
    GetPage(
      name: ClassDetailes,
      page: () => ClassDetails(),
      bindings: [
        ClassDetailsbinding(),
      ],
    ),

    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),


    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],

    )
  ];
}
