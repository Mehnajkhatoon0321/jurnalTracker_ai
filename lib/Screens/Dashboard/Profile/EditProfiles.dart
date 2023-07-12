import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          'My Profile',
          style: FTextStyle.MoreHeading,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: GestureDetector(
          onTap: () {

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
    );
  }
}
