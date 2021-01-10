import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proclinic_flutter_website_surge/about_page.dart';
import 'package:proclinic_flutter_website_surge/actions_list.dart';
import 'package:proclinic_flutter_website_surge/blog_page.dart';
import 'package:proclinic_flutter_website_surge/demo_page.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CustomTitleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width < 500;
    double xratio = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: xratio * 0.05,
            backgroundColor: Colors.white,
            child: Image.asset(
              'images/general/color.png',
              width: xratio * 0.05,
              height: xratio * 0.05,
            ),
          ),
          SizedBox(
            width: xratio * 0.01,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              mobile ? 'ProClinic\nSystems' : 'ProClinic',
              style: TextStyle(
                  shadows: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 7.0,
                        spreadRadius: 7.0),
                    BoxShadow(
                        color: Colors.orange,
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 7.0,
                        spreadRadius: 7.0),
                  ],
                  fontStyle: FontStyle.italic,
                  fontSize: xratio * 0.05,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            ),
          ),
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
        ],
      ),
    );
  }
}
