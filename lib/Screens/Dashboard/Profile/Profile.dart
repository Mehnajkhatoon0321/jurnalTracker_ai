// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:journaltrack_ai/utils/widgets.dart';
//
// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   final List<Map<String, dynamic>> options = [
//     {
//       'title': 'Option 1',
//       'image': 'assets/images/gift.png',
//       'icon': Icons.arrow_forward,
//     },
//     {
//       'title': 'Option 2',
//       'image': 'assets/images/gift.png',
//       'icon': Icons.arrow_forward,
//     },
//     {
//       'title': 'Option 3',
//       'image': 'assets/images/gift.png',
//       'icon': Icons.arrow_forward,
//     },
//     // Add more options here
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         centerTitle: false,
//         leadingWidth: 70,
//         title: Text(
//           'More Options',
//           style: FTextStyle.MoreHeading,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         leading: GestureDetector(
//           onTap: () {},
//           child: Padding(
//             padding: const EdgeInsets.only(top: 2),
//             child: Image.asset(
//               ImageAssets.Pic,
//               scale: 1.3,
//               width: 30,
//             ),
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Card(
//             margin: EdgeInsets.all(16),
//             child: Padding(
//               padding: EdgeInsets.all(12),
//               child: Stack(
//                 children: [
//                   Row(
//                     children: [
//                       Image.asset(
//                         ImageAssets.Pic,
//                         scale: 1,
//                         width: 80,
//                         height: 80,
//                       ),
//                       SizedBox(width: 20),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Alex Smith 🚴🏻‍♀️',
//                               style: FTextStyle.Profile,
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Unleash Your Dedication, Embrace the Extraordinary',
//                               style: TextStyle(fontSize: 14, color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     left: 0,
//                     child: GestureDetector(
//                       onTap: () {
//                         // Handle onTap event here
//                         // Add your desired functionality
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.orange.withOpacity(0.5),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         padding: EdgeInsets.symmetric(vertical: 3),
//                         child: Row(
//                           children: [
//                             Text(
//                               'See all',
//                               style: TextStyle(fontSize: 14, color: Colors.grey),
//                             ),
//                             Icon(
//                               CupertinoIcons.eyedropper,
//                               color: Colors.grey,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Achievement',
//                   style: TextStyle(fontSize: 14, color: Colors.grey),
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'See all',
//                       style: TextStyle(fontSize: 14, color: Colors.grey),
//                     ),
//                     Icon(
//                       CupertinoIcons.forward,
//                       color: Colors.grey,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             margin: EdgeInsets.all(16),
//             child: Padding(
//               padding: EdgeInsets.all(12),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     ImageAssets.Pic, // Replace with the path to your image
//                     scale: 1,
//                     width: 80,
//                     height: 80,
//                   ),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Alex Smith 🚴🏻‍♀️',
//                           style: FTextStyle.Profile,
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Unleash Your Dedication, Embrace the Extraordinary',
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(
//                     ImageAssets.Pic, // Replace with the path to your image
//                     scale: 1,
//                     width: 80,
//                     height: 40,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // ListView.builder(
//           //   shrinkWrap: true,
//           //   physics: NeverScrollableScrollPhysics(),
//           //   itemCount: options.length,
//           //   itemBuilder: (context, index) {
//           //     final option = options[index];
//           //     return ListTile(
//           //       leading: Image.asset(option['image']),
//           //       title: Text(option['title']),
//           //       trailing: Icon(option['icon']),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          // First Section - Image and Text Card
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child:
              Row(
                children: [
                  Image.asset(
                    ImageAssets.Pic,
                    scale: 1.3,
                    width: 100,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(width: 16),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alex Smith 🚴🏻‍♀️',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Unleash Your Dedication, Embrace the Extraordinary"',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Achievement',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          // Second Section - Achievements Card
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(height: 16),
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      height: 100, // Increase the height of each list item
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: index == 0 ? Colors.blue : index == 1 ? Colors.green : Colors.orange,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: IntrinsicWidth(
                        child: ListTile(
                          leading: Container(
                            width: 60, // Increase the width of the leading icon container
                            height: 60, // Increase the height of the leading icon container
                            child: Image.asset(
                              'assets/images/simplegift.png',
                              width: 60, // Increase the width of the image
                              height: 60, // Increase the height of the image
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Daily Dabbler', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Text(
                                index == 0
                                    ? 'Write in your journal for 7 consecutive days.'
                                    : index == 1
                                    ? 'Reach 250 journal entries.'
                                    : 'Write in your journal for 7 consecutive days..',
                                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                              ),
                            ],
                          ),
                          trailing: Image.asset('assets/images/backcirce.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),







          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rewards',
                style: TextStyle(fontSize: 16),
              ),
              Text(
    'See all',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          // Third Section - Rewards Card
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
        ],
      ),
    );
  }
}
