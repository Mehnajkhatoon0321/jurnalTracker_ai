import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Profile/Profile.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Reward/reward.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Setting/Setting.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage>
{
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Profile',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/persion_img.png',
      'route': Profile(), // Route widget for 'Profile' option
    },
    {
      'title': 'Rewards',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/star_img.png',
      'route': Reward(), // Route widget for 'Rewards' option
    },
    {
      'title': 'Settings',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/setting_img.png',
      'route':  Setting(), // Route widget for 'Settings' option
    },
    // Add more options here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 200, // Set the width of the leading section
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'More Options',
            style: FTextStyle.MoreHeading,
            maxLines: 1, // Set maximum number of lines to 1
            overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(
                ImageAssets.bellIcon,
                scale: 1.3,
                width: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(
                ImageAssets.Pic,
                scale: 1.3,
                width: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => option['route']),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: ListTile(
                leading: Image.asset(
                  option['image'],
                  width: 40,
                  height: 40,
                ),
                title: Text(option['title']),
                trailing: Icon(option['icon']),
              ),
            ),
          );
        },
      ),
    );
  }
}
