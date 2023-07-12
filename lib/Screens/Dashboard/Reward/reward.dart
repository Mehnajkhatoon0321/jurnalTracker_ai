import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class Reward extends StatefulWidget {
  const Reward({super.key});

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 70,
        title: Text(
          'Rewards',
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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Text
          Text(
            'Theme Quests',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 16),

          // Container 1
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/gift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('Stellar'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/gift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('GuidingLight'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/gift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('Celestial'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

              ],
            ),
          ),

          SizedBox(height: 16),

          // Container 2
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('Twinkle'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('GalaxyGlow'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('Nebula'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

              ],
            ),
          ),

          SizedBox(height: 16),

          // Container 3
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('JournalCoin'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('InkCoin'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/blackgift.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text('DCelestial'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
