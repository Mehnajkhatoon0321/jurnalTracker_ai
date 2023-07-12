import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 70,
        title: Text(
          'About Us',
          style: FTextStyle.MoreHeading,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Image.asset(
              ImageAssets.BackIcon,
              scale: 1,
              width: 40,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            // First Section

            // Second Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About us',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Looking To Upgrade Your Salary In The UK? \n Get The Salary You’re Worth By Learning To \nCode. 98% Employed Within 12 Months Of \nQualifying. 28% Of Students Are Hired While On The Course. Change Career. Career Changing Skills. Spaces Filling Up Fast. Looking To Upgrade Your Salary In The UK? ',
                  ),
                ],
              ),
            ),

            // Third Section

            // Fourth Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms of Service ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Looking To Upgrade Your Salary In The UK? Get The Salary You’re Worth By Learning To Code. 98% Employed Within 12 Months Of Qualifying. 28% Of Students Are Hired While On The Course. Change Career. Career Changing Skills. Spaces Filling Up Fast. Looking To Upgrade Your Salary In The UK? Looking To Upgrade Your Salary In The UK? Get The Salary You’re Worth By Learning To Code. 98% Employed Within 12 Months Of Qualifying. 28% Of Students Are Hired While On The Course. Change Career. Career Changing Skills. Spaces Filling Up Fast.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
