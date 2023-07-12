import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Profile/Profile.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Setting/About.dart';
import 'package:journaltrack_ai/Screens/Dashboard/Setting/Sharewith.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting>{
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Notification',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/bell.png',
      'route': About(), // Route widget for 'Profile' option
    },
    {
      'title': 'About',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/about.png',
      'route': About(), // Route widget for 'Rewards' option
    },
    {
      'title': 'Share with Friends',
      'icon': CupertinoIcons.forward,
      'image': 'assets/images/share.png',
      'route': About(), // Route widget for 'Settings' option
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
        leadingWidth: 70,
        title: Text(
          'Settings',
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
