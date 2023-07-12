import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Resetspassword/PasswordChange.dart';
import 'package:journaltrack_ai/Screens/Signin/SignIn.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passwordVisible = false;
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
              ImageAssets.crossIcon,
              height: 30,
              width: 30,
              // color: Colors.grey,
            ),
          ),
        ),
        body: Stack(children: [
          SingleChildScrollView(
              child: Column(children: [
            Container(
              height: height * .2,
              width: width,
              decoration: const BoxDecoration(
                color: AppColors.CreateSigngrey,
                // S
              ),
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(Constants.resetPassword,
                      style: FTextStyle.heding32W600),
                  NWidgets.ksizedBox10(context),
                  const Text(Constants.addNewPass,
                      style: FTextStyle.onBoardingSubtitle),
                ],
              ),
            ),
            Container(
                height: height * .7,
                decoration: const BoxDecoration(
                  color: Color(0xffCACACA), // S
                ),
                child: Container(
                    height: height * .5,
                    padding: EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(


                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: ListView(children: [
                      Column(children: [
                        Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 20, right: 20, bottom: 20),
                                child:
                                TextFormField(
                                  validator: (value) {
                                    RegExp regex = RegExp(
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                                    if (value!.isEmpty) {
                                      return ("This is a required field.");
                                    } else if (value.length < 8) {
                                      return ("Password must be more than 7 characters");
                                    } else if (!regex.hasMatch(value)) {
                                      return ("Password should contain upper, lower, digit, and special character");
                                    }
                                    return null;
                                  },
                                  controller: _password,
                                  obscureText: passwordVisible,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(color: AppColors.TextFormField), // Border color
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(color: Colors.blue), // Border color when focused
                                    ),
                                    hintText: 'Password',
                                    suffixIcon: IconButton(
                                      color: Colors.grey,
                                      icon: Icon(passwordVisible ? Icons.visibility_off : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                     left: 20, right: 20),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This is a required field.';
                                    }
                                    if (value != _password.text) {
                                      return ("Password must be same");
                                    }
                                    return null;
                                  },
                                  obscureText: passwordVisible,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(color: AppColors.TextFormField),
                                    ),
                                    hintText: 'Confirm Password',
                                    suffixIcon: IconButton(
                                      color: Colors.grey,
                                      icon: Icon(passwordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.03),
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
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFF49B2C8)),
                                    ),
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const PasswordChanged()),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      "Confirm",
                                        style: FTextStyle.Password
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])
                    ])))
          ]))
        ]));
  }
}
