import 'package:flutter/material.dart';

class Socials extends StatefulWidget {
  static String routename = '/socials';
  @override
  _SocialsState createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(61, 0, 45, 1),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
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
      backgroundColor: Color.fromRGBO(115, 18, 88, 1),
      body: Container(
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
                  child: Image.asset("images/Group 3271.png",fit: BoxFit.contain,)),
              Padding(
                padding: const EdgeInsets.only(top: 60  ),
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
                      child: Image.asset("images/instagram-sketched@3x.png"),
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
