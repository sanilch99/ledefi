import 'package:flutter/material.dart';
import 'package:ledefi/Screens/aboutUs.dart';
import 'package:ledefi/Screens/booking.dart';
import 'package:ledefi/Screens/policies.dart';
import 'package:ledefi/Screens/profile.dart';
import 'package:ledefi/Screens/socials.dart';
import 'package:ledefi/Screens/subscription.dart';
import 'package:ledefi/Widgets/homescreencard.dart';

class HomeScreen extends StatefulWidget {
  static String routename = '/homescreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int _index = 0;

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Color> itemCol=[Color.fromRGBO(254,77,98,1),Color.fromRGBO(49,177,254,1),Color.fromRGBO(65,219,87,1)];
  List<String> texts=['Playstation','Snooker','Billiard'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      backgroundColor:
          _index == 0 ? Colors.white : Color.fromRGBO(115, 18, 88, 1),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(
              61, 0, 45, 1), //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 31, top: 24, right: 39, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage("images/Image 2.png"),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Shroud',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, Profile.routename);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, Booking.routename);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Booking',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, Subscription.routename);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Subscription ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>AboutUs()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'About Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Policies()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Policies',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Socials()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Follow Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,builder: (context){
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Are you sure you want to logout?",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RaisedButton(
                                        child: Text(
                                            "Yes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,),
                                        ),
                                        onPressed: (){

                                        },
                                        color: Color.fromRGBO(115, 18, 88, 1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      RaisedButton(
                                        child: Text(
                                            "No",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,),
                                        ),
                                        onPressed: (){

                                        },
                                        color: Color.fromRGBO(115, 18, 88, 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25)
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 32),
                          child: Text(
                            'Logout ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: _index == 0
          ? AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
            )
          : _index == 1
              ? AppBar(
                  backgroundColor: Color.fromRGBO(61, 0, 45, 1),
                  leading: IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  title: Text(
                    "My Bookings",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              : AppBar(
                  backgroundColor: Color.fromRGBO(61, 0, 45, 1),
                  leading: IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  title: Text(
                    "Follow Us",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(61, 0, 45, 1),
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text("Bookings",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text("Profile",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
        ],
      ),
      body: _index == 0
          ?
          //homescreenbody
          Container(
              width: width,
              height: height,
              child: Column(children: [
                Container(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 30),
                  height: 246,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/unnamed (1)@3x.png",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/Group 3271.png',
                        height: 38,
                        width: 43,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: new Container(
                      height: 200,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: new List.generate(
                          3,
                          (int index) {
                            return homescreencard(
                                index == 0
                                    ? 'Billiard'
                                    : index == 1 ? 'Snooker' : 'PlayStation',
                                index == 0
                                    ? 'images/unnamed (1).png'
                                    : index == 1
                                        ? 'images/unnamed.png'
                                        : 'images/2f7840e8046f9644d7b2964fb84b8f26@2x.png',
                                index == 0
                                    ? Colors.green
                                    : index == 1
                                        ? Colors.blue
                                        : Color.fromRGBO(254, 77, 98, 1),
                                context);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 31, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Bookings',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Poppins')),
                      Text('View all',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontFamily: 'Poppins'))
                    ],
                  ),
                ),
                Flexible(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return bookingcard();
                      },
                    ),
                  ),
                ),
              ]),
            )
          : _index == 1
              ?
              //mybookings
              SafeArea(
                  child: Column(
                    children: [
                      Container(
                        child: TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Colors.amber,
                          controller: _tabController,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 3,
                          tabs: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Text(
                                "Upcoming",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Flexible(
                                    child: ListView.builder(
                                        itemCount:4,
                                        itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 31,vertical: 9.5),
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25)
                                            ),
                                            color: itemCol[index%3],
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8  ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage("images/unnamed (1).png"),
                                                    radius: 33,
                                                  ),
                                                  SizedBox(
                                                    width: 36,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        texts[index%3],
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                      Text(
                                                        "22-Aug-2020",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                      Text(
                                                        "06-07 PM",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                      Text(
                                                        "Booking Number - LE2255",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              :
              //profile
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 122,
                            height: 107,
                            child: Image.asset(
                              "images/Group 3271.png",
                              fit: BoxFit.contain,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("images/facebook@3x.png"),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    "images/instagram-sketched@3x.png"),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("images/linkedin@3x.png"),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("images/youtube@3x.png"),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
    );
  }
}
