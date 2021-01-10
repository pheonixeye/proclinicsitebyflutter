import 'dart:async' show Timer;

import 'package:flutter/material.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double xw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        color: Colors.white70.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Expanded(
            //   flex: 1,
            //   child: SizedBox(),
            // ),
            Expanded(
              flex: 12,
              child: Image(
                image: AssetImage('images/general/color.png'),
                // width: 500,
                // height: 500,
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Custom Integrated \nClinic Management Systems : \nProClinic',
                    style: TextStyle(
                      fontSize: xw * 0.03,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('\n \n \n by Dr.Kareem Zaher'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/general/loading.gif'),
                // width: 300,
                // height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
