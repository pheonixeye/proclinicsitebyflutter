import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proclinic_flutter_website_surge/about_page.dart';
import 'package:proclinic_flutter_website_surge/blog_page.dart';
import 'package:proclinic_flutter_website_surge/demo_page.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';
import 'package:proclinic_flutter_website_surge/social_accounts_url.dart';

class BSFirstColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double xw = MediaQuery.of(context).size.width;
    double xh = MediaQuery.of(context).size.height;
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: xh * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'images/general/color.png',
                  width: xw * 0.05,
                  height: xw * 0.05,
                ),
              ),
              SizedBox(
                width: xw * 0.01,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'ProClinic',
                  style: TextStyle(
                      color: Colors.white,
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
                      fontSize: xw * 0.045,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'We try to help health organizations have better\ncontrol of their patients data and their business.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'A product of KZ Inc.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              '© 2020 All Rights Reserved.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Made with ❤ in house.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class SecondandFourthCoulmns extends StatelessWidget {
  String firsttxt;
  String secondtxt;
  Widget route;
  SecondandFourthCoulmns({this.firsttxt, this.secondtxt, this.route});
  @override
  Widget build(BuildContext context) {
    double xh = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: xh * 0.02,
        ),
        Text(
          firsttxt,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => route));
              },
              child: Text(secondtxt)),
        )
      ],
    );
  }
}

class ThirdColumn extends StatelessWidget {
  String firsttxt;
  String secondtxt;
  Function route;
  ThirdColumn({this.firsttxt, this.secondtxt, this.route});
  @override
  Widget build(BuildContext context) {
    double xh = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: xh * 0.02,
        ),
        Text(
          firsttxt,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () async {
                await route(fb);
              },
              child: Text(secondtxt)),
        )
      ],
    );
  }
}

class NavigationColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double xh = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: xh * 0.02,
        ),
        Text(
          'NAVIGATION',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: MouseRegion(
              cursor: SystemMouseCursors.click, child: Text('Home')),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => DemoPage()));
          },
          child: MouseRegion(
              cursor: SystemMouseCursors.click, child: Text('Demo')),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => BlogPage()));
          },
          child: MouseRegion(
              cursor: SystemMouseCursors.click, child: Text('Blog')),
        ),
        SizedBox(
          height: xh * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AboutPage()));
          },
          child: MouseRegion(
              cursor: SystemMouseCursors.click, child: Text('About')),
        ),
      ],
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: Color(0xffBCD5E8),
      child: Row(
        children: [
          //first column
          Expanded(
            flex: 2,
            child: BSFirstColumn(),
          ),
          //second column
          Expanded(
            flex: 1,
            child: SecondandFourthCoulmns(
              firsttxt: 'EXPLORE',
              secondtxt: 'Home',
              route: HomePage(),
            ),
          ),
          Expanded(
            flex: 1,
            child: ThirdColumn(
              firsttxt: 'OUR CLIENTS',
              secondtxt: 'Be our first :)',
              route: launchURL,
            ),
          ),
          Expanded(
            flex: 1,
            child: SecondandFourthCoulmns(
              firsttxt: 'ABOUT US',
              secondtxt: 'About KareemZaher Inc',
              route: AboutPage(),
            ),
          ),
          Expanded(
            flex: 1,
            child: NavigationColumn(),
          ),
        ],
      ),
    );
  }
}
