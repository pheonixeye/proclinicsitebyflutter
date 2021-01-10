import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proclinic_flutter_website_surge/grid_view_widget.dart';
import 'package:proclinic_flutter_website_surge/social_accounts_url.dart';

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double xh = MediaQuery.of(context).size.height;
    double xw = MediaQuery.of(context).size.width;
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3.5, crossAxisCount: 1),
      children: [
        CustomTitle(
          title: 'Follow Us :)',
          width: 0.25,
        ),
        GestureDetector(
          onTap: () async {
            //TODO: launch facebook page
            //@kzproclinic
            await launchURL(fb);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/contact/fb.png',
                height: xw * 0.05,
                width: xw * 0.05,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  '@kzproclinic',
                  style: TextStyle(
                      fontSize: xw * 0.04,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            //TODO: launch youtube channel
            //kareem zaher
            await launchURL(yt);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/contact/yt.png',
                height: xw * 0.05,
                width: xw * 0.05,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  '@Kareem Zaher',
                  style: TextStyle(
                      fontSize: xw * 0.04,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            //TODO: launch linked_in
            //kareem zaher
            await launchURL(li);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/contact/li.png',
                height: xw * 0.05,
                width: xw * 0.05,
                // fit: BoxFit.fill,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  '@Kareem Zaher',
                  style: TextStyle(
                      fontSize: xw * 0.04,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            //TODO: launch instagram
            //kareem zaher proclinic instagram
            await launchURL(inn);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/contact/in.png',
                height: xw * 0.05,
                width: xw * 0.05,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  '@kzproclinic',
                  style: TextStyle(
                      fontSize: xw * 0.04,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            //TODO: launch website
            //kareem zaher.com
            await launchURL(ws);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/contact/ws.png',
                height: xw * 0.05,
                width: xw * 0.05,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'kareemzaher.com',
                  style: TextStyle(
                      fontSize: xw * 0.04,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class EmailPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double xh = MediaQuery.of(context).size.height;
    double xw = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        CustomTitle(
          title: 'E-Mail :',
          width: 0.20,
        ),
        GestureDetector(
          onTap: () async {
            //TODO: mail
            await launchURL(emailLaunchUri.toString());
          },
          child: Row(
            children: [
              Image.asset(
                'images/contact/mail.gif',
                width: xw * 0.1,
                height: xw * 0.1,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: xw * 0.02,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'proclinic@kareemzaher.com',
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: xw * 0.02,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        CustomTitle(
          title: 'Phone :',
          width: 0.20,
        ),
        GestureDetector(
          onTap: () async {
            //TODO: call phone
            await launchURL(phone1.toString());
          },
          child: Row(
            children: [
              Image.asset(
                'images/contact/phone.gif',
                width: xw * 0.1,
                height: xw * 0.1,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  '+201555905768',
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: xw * 0.02,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
