import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:gurukulapp/Screens/Dashboard/dashboardScreen.dart';
// import 'package:gurukulapp/Screens/Dashboard/dashboardScreen.dart';
import 'package:gurukulapp/Screens/Login/loginScreen.dart';
import 'package:gurukulapp/Screens/examinationScreen/examScreen.dart';
// import 'package:gurukulapp/Screens/attendenceScreen/attendenceScreen.dart';
// import 'package:gurukulapp/Screens/attendenceScreen/heatMap/attendanceHeatMap.dart';

import 'package:gurukulapp/constraits.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.white,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/gurukul.png'),
        backgroundColor: kPrimaryLightColor,
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
      ),
    );
  }
}
