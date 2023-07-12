import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journaltrack_ai/Screens/Home/HomeScreen.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';

class MultipageWidget extends StatefulWidget {
  @override
  _MultipageWidgetState createState() => _MultipageWidgetState();
}

class _MultipageWidgetState extends State<MultipageWidget> {
  int _currentPageIndex = 0;

  List<Widget> _pages = [
    Interest(),
    Choosegender(),
    Date(),

  ];

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.5),
              Colors.blue.withOpacity(0.5),

              Colors.white.withOpacity(1.0),

              // Top right color
            ],
            stops: [0.6, 0.5, 1.0],
            // Stop position of each color
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: _pages[_currentPageIndex]),
                  SizedBox(
                    height: height * 0.07,
                    width: width * 0.40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentPageIndex++;
                          if (_currentPageIndex >= _pages.length) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) =>HomePage()),
                                    (Route<dynamic> route) => false
                            );
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(width: 1, color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Add border radius
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Interest extends StatefulWidget {
  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  List<String> chipOptions = [
    'Social',
    'Poetry',
    'Marketing',
    'Entertainment',
    'Business',
    'Life Coach',
    'Pets',
    'Act As',
    'Health',
    'Fun',
    'History',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
  ];

  List<String> selectedChips = [];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          ImageAssets.crossIcon,
                          height: 40,
                          width: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Text(
                      "What is your interest?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * .65,
              width: double.infinity,
              child: Wrap(
                children: chipOptions.asMap().entries.map((entry) {
                  final int index = entry.key;
                  final String chip = entry.value;
                  final isSelected = selectedChips.contains(chip);
                  return Padding(
                    padding: const EdgeInsets.only(left: 8,right:8,bottom: 10),
                    child: ChoiceChip(
                      label: Text(chip),
                      selected: isSelected,
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            selectedChips.add(chip);
                            selectedIndex = index;
                          } else {
                            selectedChips.remove(chip);
                            selectedIndex = -1;
                          }
                        });
                      },
                      selectedColor: Color(0xFF49B2C8),
                      backgroundColor:
                          isSelected ? Colors.white : Colors.transparent,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class Choosegender extends StatefulWidget {
  @override
  _ChoosegenderState createState() => _ChoosegenderState();
}
class _ChoosegenderState extends State<Choosegender> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset(
                            ImageAssets.crossIcon,
                            height: 40,
                            width: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0,left: 15),
                    child: Text(
                      "What is your gender?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * .69,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 200),
                    child: ChoiceChip(
                      label: Row(
                        children: [
                          Icon(Icons.female, color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(  vertical: 14,
                              horizontal: 18,),
                            child: Text('Female'),
                          ),
                        ],
                      ),
                      selected: isFemaleSelected,
                      onSelected: (selected) {
                        setState(() {
                          isFemaleSelected = selected;
                          isMaleSelected = !selected;
                        });
                      },
                      backgroundColor: isFemaleSelected ? Color(0xFF49B2C8) : Colors.white,
                      selectedColor: Color(0xFF49B2C8),
                      labelStyle: TextStyle(
                        color: isFemaleSelected ? Colors.white : null,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 200),
                    child: ChoiceChip(
                      label: Row(
                        children: [
                          Icon(Icons.male, color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(  vertical: 14,
                              horizontal: 18,),
                            child: Text('Male'),
                          ),
                        ],
                      ),
                      selected: isMaleSelected,
                      onSelected: (selected) {
                        setState(() {
                          isMaleSelected = selected;
                          isFemaleSelected = !selected;
                        });
                      },
                      backgroundColor: isMaleSelected ? Color(0xFF49B2C8) :Colors.white,
                      selectedColor: Color(0xFF49B2C8),
                      labelStyle: TextStyle(
                        color: isMaleSelected ? Colors.white : null,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
    child: SingleChildScrollView(
    child: Column(
    textDirection: TextDirection.ltr,
    children: [
    Container(
    padding: const EdgeInsets.only(left: 15.0, top: 25),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Align(
    alignment: Alignment.topLeft,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: IconButton(
    onPressed: () {
    Navigator.pop(context);
    },
    icon: Image.asset(
    ImageAssets.crossIcon,
    height: 40,
    width: 40,
    color: Colors.white,
    ),
    ),
    ),
    ),
    const Padding(
    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Text(
    "What is your interest?",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 26,
    ),
    textAlign: TextAlign.start,
    ),
    ),
    ],
    ),
    ),
    ])
    )
    );
  }
}












// class DateSlider extends StatefulWidget {
//   @override
//   _DateSliderState createState() => _DateSliderState();
// }
//
// class _DateSliderState extends State<DateSlider> {
//   DateTime selectedDate = DateTime.now();
//
//   void _showDatePicker() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext builder) {
//         return Column(
//           children: [
//             Expanded(
//               child: Container(),
//             ),
//             Center( // Center the date picker
//               child: CupertinoDatePicker(
//                 mode: CupertinoDatePickerMode.date,
//                 initialDateTime: selectedDate,
//                 onDateTimeChanged: (DateTime newDate) {
//                   setState(() {
//                     selectedDate = newDate;
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: Container(),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final double width = MediaQuery.of(context).size.width;
//     var size = MediaQuery.of(context).size;
//
//     return MediaQuery(
//       data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//       child: SingleChildScrollView(
//         child: Column(
//           textDirection: TextDirection.ltr,
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 15.0, top: 25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         icon: Image.asset(
//                           ImageAssets.crossIcon,
//                           height: 40,
//                           width: 40,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
//                     child: Text(
//                       "What is your interest 4?",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 26,
//                       ),
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       _showDatePicker();
//                     },
//                     child: Text('Open Date Picker'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

