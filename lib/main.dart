import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journaltrack_ai/Screens/Dashboard/dashboard.dart';
import 'package:journaltrack_ai/Screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal-track',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),

      // routes: {
      //   Routes.splash: (context) => SplashPage(),
      //   Routes.welcome: (context) => WelcomePage(),
      //   Routes.onboarding1: (context) => OnboardingPage1(),
      //   Routes.onboarding2: (context) => OnboardingPage2(),
      //   Routes.onboarding3: (context) => OnboardingPage3(),
      //   Routes.signInInput: (context) => SignInInputPage(),
      //   Routes.signInInputFilled: (context) => SignInInputFilledPage(),
      //   Routes.forgotPassword: (context) => ForgotPasswordPage(),
      //   Routes.otp: (context) => OtpPage(),
      //   Routes.newPassword: (context) => NewPasswordPage(),
      //   Routes.success: (context) => SuccessPage(),
      //   Routes.signUpInput: (context) => SignUpInputPage(),
      //   Routes.signUpInputFilled: (context) => SignUpInputFilledPage(),
      //   Routes.interest: (context) => InterestPage(),
      //   Routes.homeNewUser: (context) => HomeNewUserPage(),
      //   Routes.createOption: (context) => CreateOptionPage(),
      //   Routes.homeOldUser: (context) => HomeOldUserPage(),
      //   Routes.goalDetails: (context) => GoalDetailsPage(),
      //   Routes.addNewTask: (context) => AddNewTaskPage(),
      // },
    );
  }
}




class Routes {

  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String onboarding = '/onboarding1';
  static const String signInInput = '/sign_in_input';
  static const String signInInputFilled = '/sign_in_input_filled';
  static const String forgotPassword = '/forgot_password';
  static const String otp = '/otp';
  static const String newPassword = '/new_password';
  static const String success = '/success';
  static const String signUpInput = '/sign_up_input';
  static const String signUpInputFilled = '/sign_up_input_filled';
  static const String interest = '/interest';
  static const String homeNewUser = '/home_new_user';
  static const String createOption = '/create_option';
  static const String homeOldUser = '/home_old_user';
  static const String goalDetails = '/goal_details';
  static const String addNewTask = '/add_new_task';
}
