import 'package:flutter/material.dart';

class ASHISH extends StatelessWidget {
  const ASHISH ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("my app"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child:Column(
        children: [Image.asset('assests/images/logistics.png',
        fit: BoxFit.fill,
        height: 300,),
        Text("WELCOME TO MY WORLD",
        textScaleFactor: 3.0,)
          
        ],
      )),
    ), );
    
  }
}
