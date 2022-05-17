import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ashish.dart';

import 'package:flutter_application_1/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Utls/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green,
      fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        '/': (context) => Loginpage(),
        MyRoutes.homeroute:(context) => ASHISH(),
        MyRoutes.loginroute:(context) => Loginpage(),

      },
    );
  }
}
