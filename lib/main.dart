import 'package:crunchtutor/pages/editprofile.dart';
import 'package:crunchtutor/pages/faq_page.dart';
import 'package:crunchtutor/pages/fileUpload.dart';
import 'package:crunchtutor/pages/forgot_page.dart';
import 'package:crunchtutor/pages/homepage2.dart';
import 'package:crunchtutor/pages/past_sessition.dart';
import 'package:crunchtutor/pages/payment_page.dart';
import 'package:crunchtutor/pages/progress_managment.dart';
import 'package:crunchtutor/pages/skip_page.dart';
import 'package:crunchtutor/pages/splash_page.dart';
import 'package:crunchtutor/pages/subscription.dart';
import 'package:crunchtutor/pages/verifyoto_page.dart';
import 'package:flutter/material.dart';
import 'package:crunchtutor/pages/login_page.dart';
import 'package:crunchtutor/pages/registration.dart';
import 'package:crunchtutor/utils/routes.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';
//adb.exe connect 127.0.0.1:62001
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.splashRoute: (context) => ImageSplashScreen(),
        MyRoutes.registrationRoute: (context) => RegistartionPage(),
        MyRoutes.skipRoute: (context) => SkipPage(),
        MyRoutes.forgotRoute: (context) => ForgotPage(),
        MyRoutes.verifyRoute: (context) => VerifyPage(),
        MyRoutes.fileRoute: (context) => FileuploadPage(),
        MyRoutes.editprofileRoute: (context) => EditProfilePage(),
        MyRoutes.pastsessionRoute: (context) => PastSessionPage(),
        MyRoutes.progressmanagmentRoute: (context) => ProgressManagementPage(),
         MyRoutes.faqRoute: (context) => FAQPage(),
         MyRoutes.paymentRoute: (context) => PaymentOptionPage(),
         MyRoutes.subcripationRoute: (context) => SubscriptionPage(),
         MyRoutes.homepage2Route: (context) => HomePage2(),
       
      },
    );
  }
}


