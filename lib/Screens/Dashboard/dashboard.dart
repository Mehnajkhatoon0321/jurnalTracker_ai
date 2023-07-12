








import 'package:flutter/material.dart';
import 'package:journaltrack_ai/Screens/Dashboard/More/MorePage.dart';

import 'package:journaltrack_ai/Screens/Home/HomeScreen.dart';

import 'package:journaltrack_ai/utils/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {















  int _selectedIndex = 0;



  static final List<Widget> _widgetOptions = <Widget>[
    //HomePage

    HomePage(),
    HomePage(),
    HomePage(),
    // PostEntry(),
    // Achivement(),
    // Achivement(),
    // Achivement()
    /*MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DashboardBloc(),
        ),
        BlocProvider(
          create: (context) =>
              AccountBloc(),

        ),
      ],
      child: HomePage(),
    ),*/
    //Account

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MorePage()),
      );
    }
    // Handle other index values for different pages if needed
  }


  @override
  void initState() {

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          centerTitle: false,
          leading: Text(
            'Hello, Alex',
            style: FTextStyle.onBoardingSubtitle,
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


        body:   Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),


        bottomNavigationBar: SafeArea(
          child: SizedBox(
            // height: height*0.10,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              // iconSize: 25,
              onTap: _onItemTapped,
              elevation: 0,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle:
              const TextStyle(color: Colors.white, fontSize: 14),
              // fixedColor: Colors.red,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.home_Img,
                    scale: 1.5,
                    width: width * 0.060,
                    // height: 20,
                    // color: Colors.blueAccent,
                    color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.note_img,
                    scale: 1.5,
                    width: width * 0.060,
                    // height: 20,
                    color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  label: 'Post Entry',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {

                    },
                    child:Image.asset(
                      ImageAssets.Plus_Img,
                      scale: 0.5,
                      // width: width * 0.080,
                      // height: 20,
                      // color: _selectedIndex == 0 ? Colors.white : Colors.white,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.award,
                    scale: 1.5,
                    width: width * 0.060,
                    // height: 20,
                    color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                  ),
                  label: 'Achievement',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.more_img,
                    scale: 1.7,
                    width: width * 0.060,
                    // height: 20,
                    color: _selectedIndex == 4 ? Colors.black : Colors.grey,
                  ),
                  label: 'More',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}