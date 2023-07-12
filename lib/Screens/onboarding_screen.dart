
import 'package:flutter/material.dart';
import 'package:journaltrack_ai/Screens/Login/loginpage.dart';

import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class onboarding extends StatefulWidget {
  @override
  State<onboarding> createState() => _onboardingState();
}

int currentIndex = 0;

bool checkid = false;
class _onboardingState extends State<onboarding> {
  int state = 1;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginScreen()),
                      (Route<dynamic> route) => false
              );
            },
            child: Text(Constants.skip,style: FTextStyle.onBoardingSubtitle,),
          ),
        ],
      ),
        body: Stack(
        children: [
          PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [

                      NWidgets.ksizedBox20(context),
                      SizedBox(
                        child: Image.asset(
                          width: width / 1.5,
                          height: height / 3,
                          contents[i].image,
                        ),
                      ),
                      NWidgets.ksizedBox20(context),
                      Padding(
                        padding:
                        EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          height: 220,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                contents[i].title,
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.0,
                                style: FTextStyle.onBoardingtitle,
                              ),
                              NWidgets.ksizedBox10(context),
                              Text(
                                textScaleFactor: 1.0,
                                contents[i].discription,
                                textAlign: TextAlign.center,
                                style: FTextStyle.onBoardingSubtitle,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: height * 0.07,
                                width: width * 0.40,
                                child: ElevatedButton(
                                  onPressed: ()
                                  {
                                    if(currentIndex == contents.length - 1){

                                      // Navigate to next screen
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()),
                                      );
                                    }
                                    _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
                                  },

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:   const Color(0xFF49B2C8),
                                    side: const BorderSide(width: 1, color: Color(0xFF49B2C8)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15), // Add border radius
                                    ),
                                  ),
                                  child: const Text(
                                    Constants.next,
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
                        ),
                      ),

                    ],
                  ),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, height / 4),
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _controller,
                count: contents.length,
                effect: const SlideEffect(
                  activeDotColor: AppColors.Textcolorblue,
                  dotWidth: 20,
                  dotHeight: 8,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
          currentIndex == 0
              ? const SizedBox()
              : Positioned(
              left: 0,
              bottom: 20,
              child: Container(
                alignment: Alignment(1.05, 1),
                child: InkWell(
                    onTap: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Column(
                      children: [

                      ],
                    )),
              )),

        ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Colors.red
            : Colors.grey,
      ),
    );
  }
}

class Onboarding {
  String image;
String title;
  String discription;
  bool check;
  String description2;

  Onboarding(
      {required this.image,

        required this.discription,
        required this.title,
        required this.check,
        required this.description2});
}

List<Onboarding> contents = [
  Onboarding(
       title: "Elevate Your Journaling Experience",
      image: ImageAssets.onboardimages,
      discription:
      "Engage with AI question prompts and \n capture your daily thoughts effortlessly",
      check: true,
      description2: ' '),
  Onboarding(
title:"Achieve Personal Growth with Goal Setting" ,
      image: ImageAssets.onboardimages1,
      discription:
      "Set goals, track progress, and earn rewards \nfor personal development",
      check: false,
      description2: ''),
  Onboarding(
       title:"Reflect, Learn, and Unleash Your Potential" ,
      image: ImageAssets.onboardimages2,
      discription:
      "Review past entries, receive AI- \n generated summaries, and gain \n valuable insights",
      check: false,
      description2: ''),
];
