import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Resetspassword/OTP_generate.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              ImageAssets.BackIcon,
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
                  height: height * 0.2,
                  decoration: const BoxDecoration(
                    color: AppColors.CreateSigngrey,
                    // Specify any other decoration properties you need
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Constants.forgotPage,
                        style: FTextStyle.heding32W600,
                      ),
                      NWidgets.ksizedBox10(context),
                      Row(
                        children:  const [





                          Text(
                            Constants.forgotTitle,
                            style: FTextStyle.onBoardingSubtitle
                          ),
                          Text(
                            Constants.forgotbold,
                            style:  FTextStyle.onBoardingSub
                          ),

                        ],
                      ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text(
                             Constants.forgotbol,
                             style:  FTextStyle.onBoardingSub
                         ),

                       ],
                     )
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
                    child: ListView(children: [Column(children: [


                      Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: _email,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15),),
                                  ),
                                  hintText: 'Email',hintStyle: FTextStyle.hintstyle,
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




                            SizedBox(height: height * 0.09),
                            Padding(
                              padding: EdgeInsets.all(width * 0.04),
                              child: SizedBox(
                                height: 55,
                                width: double.infinity,
                                child: ElevatedButton(
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
                                        MaterialPageRoute(builder: (context) => OtpGenerator()),
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
                          ],
                        ),
                      ),




                    ])])))
          ]))
        ]));
  }
}
