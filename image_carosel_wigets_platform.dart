import 'package:flutter/material.dart';
import 'package:proclinic_flutter_website_surge/grid_view_widget.dart';

List<Widget> assetimgs = [
  //first slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.orange,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/s1.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'ProClinic provides a multitude of options\nthrough easy navigation panels to the physician.',
          child: CustomGridTile(
            title: 'COMPREHENSIVE CONTROLPANEL',
            subtitle:
                'ProClinic provides a multitude of options\nthrough easy navigation panels to the physician.',
            leadingIcon: Icon(Icons.control_point),
            color: Colors.orange,
            child: Image.asset('images/carosel/s11.gif'),
          ),
        ),
      )
    ],
  ),
  //second slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.purple,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/s2.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'It becomes easy to contact patients directly thus\ndecreasing No Shows and delayed appointments.',
          child: CustomGridTile(
            title: 'DIRECT PATIENT CONTACT',
            subtitle:
                'It becomes easy to contact patients directly thus\ndecreasing No Shows and delayed appointments.',
            leadingIcon: Icon(Icons.perm_contact_calendar_rounded),
            color: Colors.purple,
            child: Image.asset('images/carosel/s22.gif'),
          ),
        ),
      )
    ],
  ),
  //third slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/s3.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'Each clinic console is made from scratch to \nmake every doctor experience different and unique.',
          child: CustomGridTile(
            title: 'CUSTOMIZATION',
            subtitle:
                'Each clinic console is made from scratch to \nmake every doctor experience different and unique.',
            leadingIcon: Icon(Icons.dashboard_customize),
            color: Colors.blue,
            child: Image.asset('images/carosel/s33.gif'),
          ),
        ),
      )
    ],
  ),
  //fourth slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/s4.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'Prescribing drugs, requesting labs and/or rads has\n never been that easy and customizable.',
          child: CustomGridTile(
            title: 'DRUGS / LABS / RADS',
            subtitle:
                'Prescribing drugs, requesting labs and/or rads has\n never been that easy and customizable.',
            leadingIcon: Icon(Icons.duo_sharp),
            color: Colors.red,
            child: Image.asset(
              'images/carosel/s44.gif',
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
    ],
  ),
  //fifth slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.green,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/pres.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'Every pixel of the electronic prescription is custom\nmade for each doctor and is configured in minutes.',
          child: CustomGridTile(
            title: 'ELECTRONIC PRESCRIPTION',
            subtitle:
                'Every pixel of the electronic prescription is custom\nmade for each doctor and is configured in minutes.',
            leadingIcon: Icon(Icons.check),
            color: Colors.green,
            child: Image.asset(
              'images/carosel/s55.gif',
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
    ],
  ),
  //sixth slide
  Row(
    children: [
      // Expanded(
      //   flex: 3,
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.white,
      //         boxShadow: [
      //           BoxShadow(
      //               color: Colors.green,
      //               offset: Offset(0.0, 0.0),
      //               blurRadius: 4.0,
      //               spreadRadius: 7.0),
      //         ]),
      //     child: Image.asset(
      //       'carosel/s6.png',
      //     ),
      //   ),
      // ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message:
              'Medical hitory sheet is created in a detailed fashion by each physician making the system suitable for any medical speciality.',
          child: CustomGridTile(
            title: 'DETAILED MEDICAL HISTORY',
            subtitle:
                'Medical hitory sheet is created in a detailed fashion by each physician making the system suitable for any medical speciality.',
            leadingIcon: Icon(Icons.circle_notifications),
            color: Colors.blueGrey,
            child: Image.asset(
              'images/carosel/s6.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
    ],
  ),
  //seventh slide
  Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.indigo,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 4.0,
                    spreadRadius: 7.0),
              ]),
          child: Image.asset(
            'images/carosel/s71.png',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      // Expanded(
      //   flex: 4,
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.white,
      //         boxShadow: [
      //           BoxShadow(
      //               color: Colors.green,
      //               offset: Offset(0.0, 0.0),
      //               blurRadius: 4.0,
      //               spreadRadius: 7.0),
      //         ]),
      //     child: Image.asset(
      //       'carosel/s72.png',
      //     ),
      //   ),
      // ),
      Expanded(
        flex: 2,
        child: Tooltip(
          message: 'Simple UI, no complexities\nand familiar expressions.',
          child: CustomGridTile(
            title: 'SETTINGS',
            subtitle: 'Simple UI, no complexities\nand familiar expressions.',
            leadingIcon: Icon(Icons.assessment),
            color: Colors.indigo,
            child: Image.asset(
              'images/carosel/s77.gif',
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
    ],
  ),
];

List<Widget> mobileformatcaroselitems = [
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.orange,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/s1.png',
    ),
  ),
  Tooltip(
    message:
        'ProClinic provides a multitude of options through easy navigation panels to the physician.',
    child: CustomGridTile(
      title: 'COMPREHENSIVE CONTROLPANEL',
      subtitle:
          'ProClinic provides a multitude of options through easy navigation panels to the physician.',
      leadingIcon: Icon(Icons.control_point),
      color: Colors.orange,
      child: Image.asset('images/carosel/s11.gif'),
    ),
  ),
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.purple,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/s2.png',
    ),
  ),
  Tooltip(
    message:
        'It becomes easy to contact patients directly thus decreasing No Shows and delayed appointments.',
    child: CustomGridTile(
      title: 'DIRECT PATIENT CONTACT',
      subtitle:
          'It becomes easy to contact patients directly thus decreasing No Shows and delayed appointments.',
      leadingIcon: Icon(Icons.perm_contact_calendar_rounded),
      color: Colors.purple,
      child: Image.asset('images/carosel/s22.gif'),
    ),
  ),
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.blue,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/s3.png',
    ),
  ),
  Tooltip(
    message:
        'Each clinic console is made from scratch to make every doctor experience different and unique.',
    child: CustomGridTile(
      title: 'CUSTOMIZATION',
      subtitle:
          'Each clinic console is made from scratch to make every doctor experience different and unique.',
      leadingIcon: Icon(Icons.dashboard_customize),
      color: Colors.blue,
      child: Image.asset('images/carosel/s33.gif'),
    ),
  ),
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.red,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/s4.png',
    ),
  ),
  Tooltip(
    message:
        'Prescribing drugs, requesting labs and/or rads has never been that easy and customizable.',
    child: CustomGridTile(
      title: 'DRUGS / LABS / RADS',
      subtitle:
          'Prescribing drugs, requesting labs and/or rads has never been that easy and customizable.',
      leadingIcon: Icon(Icons.duo_sharp),
      color: Colors.red,
      child: Image.asset(
        'images/carosel/s44.gif',
        fit: BoxFit.fill,
      ),
    ),
  ),
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.green,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/pres.png',
    ),
  ),
  Tooltip(
    message:
        'Every pixel of the electronic prescription is custom made for each doctor and is configured in minutes.',
    child: CustomGridTile(
      title: 'ELECTRONIC PRESCRIPTION',
      subtitle:
          'Every pixel of the electronic prescription is custom made for each doctor and is configured in minutes.',
      leadingIcon: Icon(Icons.check),
      color: Colors.green,
      child: Image.asset(
        'images/carosel/s55.gif',
        fit: BoxFit.fill,
      ),
    ),
  ),
  Tooltip(
    message:
        'Medical hitory sheet is created in a detailed fashion by each physician making the system suitable for any medical speciality.',
    child: CustomGridTile(
      title: 'DETAILED MEDICAL HISTORY',
      subtitle:
          'Medical hitory sheet is created in a detailed fashion by each physician making the system suitable for any medical speciality.',
      leadingIcon: Icon(Icons.circle_notifications),
      color: Colors.blueGrey,
      child: Image.asset(
        'images/carosel/s6.png',
        fit: BoxFit.fill,
      ),
    ),
  ),
  Tooltip(
    message: 'Simple UI, no complexities and familiar expressions.',
    child: CustomGridTile(
      title: 'SETTINGS',
      subtitle: 'Simple UI, no complexities and familiar expressions.',
      leadingIcon: Icon(Icons.assessment),
      color: Colors.indigo,
      child: Image.asset(
        'images/carosel/s77.gif',
        fit: BoxFit.fill,
      ),
    ),
  ),
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.indigo,
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
              spreadRadius: 7.0),
        ]),
    child: Image.asset(
      'images/carosel/s71.png',
    ),
  ),
];
