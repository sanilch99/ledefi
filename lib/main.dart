import 'package:flutter/material.dart';
import 'package:ledefi/Screens/aboutUs.dart';
import 'package:ledefi/Screens/booking.dart';
import 'package:ledefi/Screens/detailscreen.dart';
import 'package:ledefi/Screens/diffBooking.dart';
import 'package:ledefi/Screens/homescreen.dart';
import 'package:ledefi/Screens/payment.dart';
import 'package:ledefi/Screens/policies.dart';
import 'package:ledefi/Screens/profile.dart';
import 'package:ledefi/Screens/socials.dart';
import 'package:ledefi/Screens/subscription.dart';
import 'package:ledefi/Screens/subscriptiondetail.dart';
import 'Screens/login.dart';
import 'Screens/addotp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
      routes: {
        AddOtp.routename: (ctx) => AddOtp(),
        Profile.routename: (ctx) => Profile(),
        HomeScreen.routename: (ctx) => HomeScreen(),
        Subscription.routename: (ctx) => Subscription(),
        SubscriptionDetail.routename: (ctx) => SubscriptionDetail(),
        DetailScreen.routename  : (ctx) => DetailScreen(),
        Payment.routename: (ctx) => Payment(),
        Socials.routename:(ctx)=>Socials(),
        Booking.routename:(ctx)=>Booking(),
        DiffBooking.routename:(context)=>DiffBooking(),
      },
    );
  }
}
