import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(Issa());
  });
}

class Issa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The academy poker',
      home: SplashPage(),
      routes: {
        Constants.launcherRoute: (context) => LauncherPage(),
        Constants.loginRoute: (context) => LoginPage(),
        Constants.signUpRoute: (context) => SignUpPage(),
        Constants.resetPasswordRoute: (context) => ResetPasswordPage(),
        Constants.homeRoute: (context) => HomePage(),
        Constants.mainPage: (context) => MainPage(),
        Constants.registerPage: (context) => RegisterPage(),
      },
    );
  }
}
