import 'dart:math';

import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  String title;
  String subtitle;
  Widget child;
  Widget leadingIcon;
  Color color;
  CustomGridTile(
      {this.title, this.subtitle, this.child, this.leadingIcon, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Tooltip(
        message: subtitle,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: color,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: color,
              leading: leadingIcon,
              title: Text(title),
              subtitle: Text(subtitle),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  String title;
  double width;
  CustomTitle({this.title, this.width});
  @override
  Widget build(BuildContext context) {
    double xratio = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      offset: Offset(0.0, 0.0),
                      blurRadius: 4.0,
                      spreadRadius: 7.0),
                ]),
            child: Center(
              child: Text(
                title,
                textScaleFactor: 1.1,
                style: TextStyle(
                    fontSize: xratio * 0.03, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomGrids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        CustomGridTile(
          title: 'EASE OF USE',
          subtitle:
              'Made with the intent of being easy to use by the \nDoctor and the Assistant alike.',
          leadingIcon: Icon(Icons.explicit),
          child: Image.asset('images/grid/easy1.gif'),
          color: Colors.blue,
        ),
        CustomGridTile(
          title: 'APPOINTMENTS AND DIARIES',
          subtitle:
              'Diaries can be set up for as many practitioners as you \nwant and booking appointments is quick and easy.',
          leadingIcon: Icon(Icons.calendar_today),
          child: Image.asset(
            'images/grid/booking.gif',
            fit: BoxFit.fitHeight,
          ),
          color: Colors.orange,
        ),
        CustomGridTile(
          title: 'UNLIMITED PRACTITIONERS',
          subtitle:
              'Made with polyclinic enviroment set in mind, setting an\n unlimited number of specialities is trivial.',
          leadingIcon: Icon(Icons.person_add),
          child: Image.asset('images/grid/Doctors.gif'),
          color: Colors.green,
        ),
        CustomGridTile(
          title: 'BILLING AND RECEIPTS',
          subtitle:
              'Billing and invoicing is fast and straightforward and\n You can also apply variable pricing & discounts.',
          leadingIcon: Icon(Icons.money),
          child: Image.asset(
            'images/grid/reciept.gif',
            fit: BoxFit.fitHeight,
          ),
          color: Colors.blueGrey,
        ),
        CustomGridTile(
          title: 'SECURE RECORDING OF CLINICAL NOTES',
          subtitle:
              "Record clinical data and treatment notes in a safe and\n secure format.",
          leadingIcon: Icon(Icons.local_hospital),
          child: Image.asset(
            'images/grid/records.gif',
            fit: BoxFit.fitHeight,
          ),
          color: Colors.blue,
        ),
        CustomGridTile(
          title: 'ATTACH DOCUMENTS',
          subtitle:
              "Simply attach documents to the patients' records by \nscans of lab reports, x-rays or PDFs.",
          leadingIcon: Icon(Icons.dashboard_customize),
          child: Image.asset(
            'images/grid/docs.gif',
            fit: BoxFit.fitHeight,
          ),
          color: Colors.red,
        ),
        CustomGridTile(
          title: 'COMMUNICATIONS',
          subtitle:
              "ProClinic makes communicating with your patients \nquick and easy as it can Cut DNAs by up to 60%.",
          leadingIcon: Icon(Icons.app_registration),
          child: Image.asset(
            'images/grid/comm.gif',
            fit: BoxFit.fitHeight,
          ),
          color: Colors.green,
        ),
        CustomGridTile(
          title: 'MARKETING',
          subtitle:
              "ProClinic allows sending targeted campaigns via SMS \n and creating a detailed marketing lists.",
          leadingIcon: Icon(Icons.sms),
          child: Image.asset(
            'images/grid/sms1.gif',
            fit: BoxFit.fill,
          ),
          color: Colors.deepOrange,
        ),
        CustomGridTile(
          title: 'ELECTRONIC PRESCRIPTION',
          subtitle:
              "Doctors can create electronic prescriptions with their\nclinic name. This will eliminate handwriting problems.",
          leadingIcon: Icon(Icons.library_books),
          child: Image.asset(
            'images/grid/presc1.gif',
            fit: BoxFit.fill,
          ),
          color: Colors.grey,
        ),
      ],
    );
  }
}
