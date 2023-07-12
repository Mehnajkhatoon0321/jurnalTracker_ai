import 'package:flutter/material.dart';
import 'dart:async';

import 'package:journaltrack_ai/Screens/Resetspassword/Resetpassword_page.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpGenerator extends StatefulWidget {
  const OtpGenerator({Key? key}) : super(key: key);

  @override
  State<OtpGenerator> createState() => _OtpGeneratorState();
}

class _OtpGeneratorState extends State<OtpGenerator> {
  bool passwordVisible = false;
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  int countdown = 60;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.CreateSigngrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            ImageAssets.BackIcon,
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.2,
                  decoration: const BoxDecoration(
                    color: AppColors.CreateSigngrey,
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Constants.EnterOTPhed,
                        style: FTextStyle.heding32W600,
                      ),
                      NWidgets.ksizedBox10(context),
                      Row(
                        children: const [
                          Text(
                            Constants.enterOTPSub,
                            style: FTextStyle.onBoardingSubtitle,
                          ),
                          Text(
                            Constants.EnterOTP,
                            style: FTextStyle.onBoardingSub,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * .7,
                  decoration: const BoxDecoration(
                    color: Color(0xffCACACA),
                  ),
                  child: Container(
                    height: height * .5,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Form(
                              key: formKey,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35.0,),
                                    child: Center(
                                      child: Text(
                                        '00: $countdown ',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: PinCodeTextField(
                                      appContext: context,
                                      length: 4,
                                      onChanged: (value) {
                                        // Handle OTP changes
                                      },
                                      onCompleted: (value) {
                                        // Handle OTP submission
                                      },
                                      pinTheme: PinTheme(
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(10),
                                        fieldHeight: 60,
                                        fieldWidth: 60,
                                        activeFillColor: Colors.white,
                                        activeColor: Colors.blue,
                                        inactiveFillColor: Colors.white,
                                        inactiveColor: Colors.grey,
                                        selectedFillColor: Colors.blue,
                                        selectedColor: Colors.blue,
                                        borderWidth: 2,
                                      ),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        Constants.Otppage,
                                        style: TextStyle(

                                          color: AppColors.Textcolorlight
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Handle sign in functionality
                                          // Add your code here to handle the sign in action
                                        },
                                        child: const Text(
                                          Constants.Otp,
                                      style: TextStyle(
                                            color: Color(0xFF49B2C8),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                      ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.09),
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: SizedBox(
                                      height: 55,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                          backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                            Color(0xFF49B2C8),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (formKey.currentState!.validate()) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const ResetPassword(),
                                              ),
                                            );
                                          }
                                        },
                                        child: const Text(
                                          "Continue",
                                            style: FTextStyle.Password
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
