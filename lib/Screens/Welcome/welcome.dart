import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Login/loginpage.dart';
import 'package:journaltrack_ai/Screens/onboarding_screen.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class WelcomePage extends StatefulWidget {
    WelcomePage({Key? key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  bool checkid = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: AppColors.white,



          body: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[

                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      ImageAssets.splashlog,
                      width: width * 0.8,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "“",
                          style: FTextStyle.welcomeheading,
                        ),
                        const Text(
                          "Welcome",
                          style: FTextStyle.welcomeheading,
                        ),
                        SizedBox(
                          width: width * 0.030,
                        ),
                        const Text(
                          "to",
                          style: FTextStyle.welcometo,
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "JournalTrack",
                          style: FTextStyle.welcometo,
                        ),
                        Text(
                          "”",
                          style: FTextStyle.welcometo,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.030,
                  ),
                    const Align(
                    alignment: Alignment.center,
                    child: Text(
                      Constants.welcomeSubtitle,
                      textAlign: TextAlign.center,
                      style: FTextStyle.welcomesubtitle,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.080,
                  ),
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
                          MaterialPageRoute(builder: (context) =>  onboarding()),
                              (Route<dynamic> route) => false
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:   const Color(0xFF49B2C8),
                      side: const BorderSide(width: 1, color: Color(0xFF49B2C8)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // Add border radius
                      ),
                    ),
                    child: const Text(
                      Constants.getStarted,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color:   Colors.white,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
          ],
              ),
            ],
          ),
        ));
  }
}
