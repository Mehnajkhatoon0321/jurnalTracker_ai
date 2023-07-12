import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Signin/SignIn.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({Key? key}) : super(key: key);

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.Circle),
            SizedBox(height: height * 0.03),
            Text(
              Constants.Passwordchange,
              style: FTextStyle.heding32W,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.03),
            Text(
              Constants.Passwordsub,
              style: FTextStyle.onBoarding,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: height * 0.07),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: height * 0.07,
                    width: width * 0.40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) =>  SignIn()),
                              (Route<dynamic> route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF49B2C8),
                        side: const BorderSide(width: 1, color: Color(0xFF49B2C8)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // Add border radius
                        ),
                      ),
                      child: const Text(
                        Constants.Passnai,
                        style: FTextStyle.Password
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
