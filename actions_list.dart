import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proclinic_flutter_website_surge/about_page.dart';
import 'package:proclinic_flutter_website_surge/blog_page.dart';
import 'package:proclinic_flutter_website_surge/demo_page.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:ui';

List<Widget> actionslist(BuildContext context) {
  return [
    ActionListButton(
      label: 'HOME',
      icondata: Icons.home,
      route: HomePage(),
    ),
    ActionListButton(
      label: 'DEMO',
      icondata: Icons.featured_play_list,
      route: DemoPage(),
    ),
    ActionListButton(
      label: 'BLOG',
      icondata: Icons.album_outlined,
      route: BlogPage(),
    ),
    ActionListButton(
      label: 'ABOUT',
      icondata: Icons.account_box,
      route: AboutPage(),
    ),
  ];
}

class ActionListButton extends StatelessWidget {
  String label;
  IconData icondata;
  Widget route;
  ActionListButton({this.icondata, this.label, this.route});

  @override
  Widget build(BuildContext context) {
    double xratio = MediaQuery.of(context).size.width;

    return MaterialButton(
      hoverColor: Colors.orange[500].withOpacity(0.3),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Icon(
          icondata,
          size: xratio * 0.03,
          color: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        Text(label)
      ]),
      // label: Text(
      //   label,
      //   textScaleFactor: xratio / xratio * 1.3,
      //   style: TextStyle(
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
