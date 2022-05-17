import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utls/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = ""; // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              'assests/images/login.png',
              fit: BoxFit.fill,
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "WELCOME $name",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "enter username", labelText: "USERNAME"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "enter password", labelText: "PASSWORD"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    }),
                    child: Container(
                      height: 50.0,
                      width: 100,
                      alignment: Alignment.center,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.limeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  )
                  //ElevatedButton(
                  // child: Text("LOGIN"),
                  //style: TextButton.styleFrom(maximumSize: Size(600, 50)),
                  //onPressed: () {
                  // Navigator.pushNamed(context, MyRoutes.homeroute);
                  // },
                  // )
                ],
              ),
            )
          ],
        )));
  }
}
