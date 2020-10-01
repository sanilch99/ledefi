import 'package:flutter/material.dart';

class DiffBooking extends StatefulWidget {
  static String routename = '/difbooking';
  @override
  _DiffBookingState createState() => _DiffBookingState();
}

class _DiffBookingState extends State<DiffBooking> {
  int _index = 0;
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

          },
        ),

        title: Text(
          "Playstation Booking",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18,left: 116,right: 115,bottom: 0),
              child: Column(
                children: [
                  Text(
                    "Booking Number",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "LE2255",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18,right: 16,top: 15,bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(115, 18, 88, 1),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "18-07-2020",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(left: 18,right: 16,top: 0,bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(115, 18, 88, 1),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Time",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "10:00 AM - 11:00 AM",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(left: 18,right: 16,top: 0,bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(115, 18, 88, 1),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Persons",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(left: 18,right: 16,top: 0,bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(115, 18, 88, 1),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Additional Members",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(left: 18,right: 16,top: 0,bottom: 42),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(115, 18, 88, 1),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start  ,
                    children: [
                      Text(
                        "Addons",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Power Glove",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      color: Color.fromRGBO(115, 18, 88, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Text(
                                "04",
                                style: TextStyle(
                                    fontSize: 46,
                                    color: Colors.white,
                                    letterSpacing: -3
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.more_horiz,color: Colors.blueGrey[800],size: 5,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "DAYS",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          letterSpacing: -1
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      color: Color.fromRGBO(115, 18, 88, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Text(
                                "04",
                                style: TextStyle(
                                    fontSize: 46,
                                    color: Colors.white,
                                    letterSpacing: -3
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.more_horiz,color: Colors.blueGrey[800],size: 5,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "HOURS",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          letterSpacing: -1
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      color: Color.fromRGBO(115, 18, 88, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Text(
                                "04",
                                style: TextStyle(
                                    fontSize: 46,
                                    color: Colors.white,
                                    letterSpacing: -3
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.more_horiz,color: Colors.blueGrey[800],size: 5,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "MINUTES",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          letterSpacing: -1
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11,bottom: 10),
              child: Container(
                child: Center(
                  child: Text(
                    "Total QR 240",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 106,right: 106 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          height: 40,
                          child: RaisedButton(
                            color: Color.fromRGBO(115, 18, 88, 1),
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return Card(
                                      child: Column(
                                        children: [
                                          Text(
                                              "Do you want to cancel this booking ?",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Poppins')
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins')
                            ),

                          ),
                        ),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
