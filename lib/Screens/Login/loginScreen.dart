import 'package:flutter/material.dart';

import 'package:gurukulapp/Screens/Login/Components/loginForm.dart';
import 'package:gurukulapp/Screens/Login/Components/loginScreenTopImage.dart';
import 'package:gurukulapp/background.dart';
import 'package:gurukulapp/constraits.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const LoginScreenTopImage(),
            const Row(
              children: [
                 Spacer(),
                Expanded(
                  flex: 8,
                  child: LoginForm(),
                ),
                 Spacer(),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Image.asset(
              'assets/images/alongx.png',
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
