import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_time_picker/horizontal_time_picker.dart';
import 'package:ledefi/Widgets/homescreencard.dart';

class DetailScreen extends StatefulWidget {
  static String routename = '/detailscreen';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

int count = 1;

class _DetailScreenState extends State<DetailScreen> {
  List<String> time1 = [
    "1:00AM",
    "2:00AM",
    "3:00AM",
    "4:00AM",
    "5:00AM",
    "6:00AM",
    "7:00AM",
    "8:00AM",
    "9:00AM",
    "10:00AM",
    "11:00AM",
    "12:00PM",
    "1:00PM",
    "2:00PM",
    "3:00PM",
    "4:00PM",
    "5:00PM",
    "6:00PM",
    "7:00PM",
    "8:00PM",
    "9:00PM",
    "10:00PM",
    "11:00PM",
    "12:00AM"
  ];
  List<String> time2 = [
    "2:00AM",
    "3:00AM",
    "4:00AM",
    "5:00AM",
    "6:00AM",
    "7:00AM",
    "8:00AM",
    "9:00AM",
    "10:00AM",
    "11:00AM",
    "12:00PM",
    "1:00PM",
    "2:00PM",
    "3:00PM",
    "4:00PM",
    "5:00PM",
    "6:00PM",
    "7:00PM",
    "8:00PM",
    "9:00PM",
    "10:00PM",
    "11:00PM",
    "12:00AM",
    "1:00AM"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 30),
              height: 246,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/billiard.png",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text('QR 100',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins')),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 36, right: 25),
                  child: ListView(
                    children: [
                      Text('Billiard',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          'Cue sports, also known as billiard sports, are a wide variety of games of skill generally played with a cue stick, which is used to strike billiard balls and thereby cause them to move around a cloth-covered billiards table bounded by elastic bumpers known as cushions.',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontFamily: 'Poppins')),
                      SizedBox(
                        height: 11,
                      ),
                      Text('Board spec',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      SizedBox(
                        height: 15,
                      ),
                      Text('7 x 11 x 15',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontFamily: 'Poppins')),
                      SizedBox(
                        height: 21,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Select Date',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins')),
                          Icon(
                            Icons.date_range,
                            color: Color.fromRGBO(115, 18, 88, 1),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: DatePicker(
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          selectionColor: Color.fromRGBO(115, 18, 88, 1),
                          selectedTextColor: Colors.white,
                          onDateChange: (date) {
                            // New date selected
                            setState(() {});
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Select Time',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins')),
                          ],
                        ),
                      ),
                      Container (
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: ListView.builder(
                          itemCount: time1.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ),
                              color: Color.fromRGBO(115, 18, 88, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      time1[index],
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontFamily: 'Poppins'),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(time2[index],
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Select Board',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              height: 40,
                              child: RaisedButton(
                                color: Color.fromRGBO(115, 18, 88, 1),
                                onPressed: (){

                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "View Layout",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 26),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Persons',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins')),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 18,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){

                                        },
                                        icon: Icon(Icons.remove_circle,color:Color.fromRGBO(115, 18, 88, 1) ,),
                                      ),
                                      Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Poppins')
                                      ),
                                      IconButton(
                                        onPressed: (){

                                        },
                                        icon: Icon(Icons.add_circle ,color:Color.fromRGBO(115, 18, 88, 1) ,),
                                      )
                                    ],
                                  ),

                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(61, 0, 45, 1),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
