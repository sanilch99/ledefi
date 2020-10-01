import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  static String routename = '/booking';
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
              padding: EdgeInsets.only(left: 18,right: 16,top: 25,bottom: 12),
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
            Padding(
              padding: const EdgeInsets.only(top: 43,bottom: 50),
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
                Checkbox(
                  value: true,
                  activeColor:Color.fromRGBO(115, 18, 88, 1),
                  onChanged: (s){

                  },
                ),
                Text(
                  "I accept the terms and Conditions.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
