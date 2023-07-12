import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
class Sharewith extends StatefulWidget {
  const Sharewith({super.key});

  @override
  State<Sharewith> createState() => _SharewithState();
}

class _SharewithState extends State<Sharewith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
