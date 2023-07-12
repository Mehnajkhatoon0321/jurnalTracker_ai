import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:journaltrack_ai/Screens/Login/intrest.dart';
import 'package:journaltrack_ai/Screens/Signin/SignIn.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * .2,
                  decoration: const BoxDecoration(
                    color: AppColors.CreateSigngrey,
                    // S
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(Constants.createAccount, style: FTextStyle.heding32W600),
                      NWidgets.ksizedBox10(context),
                      const Text(Constants.createYourAccount, style: FTextStyle.onBoardingSubtitle),
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
                    child: ListView(

                      children: [
                        Column(
                          children: [
                            Form(
                              key: formKey,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        ),
                                        hintText: 'First Name', hintStyle: FTextStyle.hintstyle,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'This is a required field.';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: TextFormField(
                                      controller: _email,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        ),
                                        hintText: 'Email', hintStyle: FTextStyle.hintstyle,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'This is a required field.';
                                        } else if (EmailValidator.validate(value) == false) {
                                          return 'Invalid email address';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'This is a required field.';
                                        }

                                        // Password strength validation
                                        if (value.length < 8) {
                                          return 'Password must be at least 8 characters long.';
                                        }

                                        if (!value.contains(RegExp(r'[A-Z]'))) {
                                          return 'Password must contain at least one uppercase letter.';
                                        }

                                        if (!value.contains(RegExp(r'[a-z]'))) {
                                          return 'Password must contain at least one lowercase letter.';
                                        }

                                        if (!value.contains(RegExp(r'[0-9]'))) {
                                          return 'Password must contain at least one digit.';
                                        }

                                        if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                          return 'Password must contain at least one special character.';
                                        }

                                        return null;
                                      },
                                      controller: _password,
                                      obscureText: passwordVisible,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        ),
                                        hintText: 'Password', hintStyle: FTextStyle.hintstyle,
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
                                  SizedBox(height: height * 0.03),
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: SizedBox(
                                      height: 55,
                                      width: double.infinity,
                                      child:
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF49B2C8)),
                                        ),
                                        onPressed: () {
                                          if (formKey.currentState!.validate()) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => MultipageWidget()),
                                            );
                                          }
                                        },
                                        child: const Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'inter',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Already have an account? ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    fontFamily: 'SourceSansPro',
                                    color: AppColors.Textcolorlight,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignIn()),
                                    );
                                    // Handle sign in functionality
                                    // Add your code here to handle the sign in action
                                  },
                                  child: Text(
                                    'Sign In',
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

                            SizedBox(height: height * 0.04),
                            Padding(
                              padding: EdgeInsets.only(left: 40,right: 40),
                              child: Row(
                                children: const [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all( 0.8),
                                    child: Text(
                                      "Or sign up with",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'SourceSansPro',
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Handle the onTap event for the Google container
                                    // Add your desired functionality here
                                  },
                                  child: Container(
                                    // width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(color: AppColors.TextFormField),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(ImageAssets.googleIcon),
                                          // SizedBox(
                                          //   width: 20,
                                          // ),
                                          // Text('Google'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Handle the onTap event for the Facebook container
                                    // Add your desired functionality here
                                  },
                                  child: Container(
                                    // width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(color: AppColors.TextFormField),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(ImageAssets.facebookIcon),
                                          // const SizedBox(
                                          //   width: 20,
                                          // ),
                                          // Text('Facebook'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.05),
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