import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assests/images/login.png', fit: BoxFit.fill),
            SizedBox(
              height: 30,
            ),
            Text(
              "WELCOME",
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
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "enter password", labelText: "PASSWORD"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("LOGIN"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("WELCOME TO MY WORLD");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
