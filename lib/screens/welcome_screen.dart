import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messageme_app/screens/register_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'package:messageme_app/widgets/mybutton.dart';

class WelcomeScreen extends StatelessWidget {
  static const String screenRoute = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 180,
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(
                    color: Color(0xff2e386b),
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              text: 'Sign in',
              onpressed: () {
                Navigator.pushNamed(context, SigninScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.blue[900]!,
              text: 'Register',
              onpressed: () {
                Navigator.pushNamed(context, RegisterScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
