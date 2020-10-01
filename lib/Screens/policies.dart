import 'package:flutter/material.dart';

class Policies extends StatefulWidget {
  @override
  _PoliciesState createState() => _PoliciesState();
}

class _PoliciesState extends State<Policies> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(61, 0, 45, 1),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        title: Text(
          "Policies",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
      backgroundColor: Color.fromRGBO(115, 18, 88, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical:110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing  Integer scelerisque magna nec tortor pellentesque tempus. Vestibulum quis sapien a ipsum dictum dignissim scelerisque in metus. Quisque ullamcorper, turpis sed dignissim aliquet, est lectus lacinia augue, auctor malesuada lacus nulla id nunc. Fusce vitae lobortis purus. Aenean interdum non mi id varius.",
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              "\nLorem ipsum dolor sit amet, consectetur adipiscing elornare urna eu lacinia aliquam. Donec blandit luctus purus, et porttitor mauris imperdiet sed. Integer scelerisque magna nec tortor pellentesque tempus. Vestibulum quis sapien a ipsum dictum dignissim scelerisque in metus. Quisque ullamcorper, turpis sed dignissim aliquet, est lectus lacinia augue, auctor malesuada lacus nulla id nunc. Fusce vitae lobortis purus. Aenean interdum non mi id varius.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
      ),
    );
  }
}
