import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proclinic_flutter_website_surge/bottom_sheet_widgets.dart';
import 'package:proclinic_flutter_website_surge/custom_divider.dart';
import 'package:proclinic_flutter_website_surge/grid_view_widget.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';
import 'package:proclinic_flutter_website_surge/social_accounts_url.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 4.0,
                  spreadRadius: 7.0),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        offset: Offset(0.0, 0.0),
                        blurRadius: 4.0,
                      ),
                    ]),
                child: ListView(
                  children: [
                    //demo links
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () async {
                              await launchURL(ytR);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.8,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffFF7F27),
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 7.0),
                                  ],
                                ),
                                child: Center(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Tooltip(
                                      message:
                                          'Demonstration of how to Operate the Reception "Data Entry"\n Application with Arabic Explanation in detail.',
                                      child: CustomGridTile(
                                        color: Color(0xffFF7F27),
                                        title: 'RECEPTION',
                                        subtitle:
                                            'Demonstration of how to Operate the Reception "Data Entry" Application with Arabic\nExplanation in detail.',
                                        leadingIcon:
                                            Icon(Icons.play_circle_filled),
                                        child: Image.asset(
                                          'images/general/orange.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.blueGrey,
                          thickness: 5,
                          width: 15,
                          indent: 15,
                          endIndent: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () async {
                              await launchURL(ytC);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.8,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffA349A4),
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 7.0),
                                  ],
                                ),
                                child: Center(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Tooltip(
                                      message:
                                          'Demonstration of how to Operate the Clinic "Physician"\n Application with Arabic Explanation in detail.',
                                      child: CustomGridTile(
                                        color: Color(0xffA349A4),
                                        title: 'CLINIC',
                                        subtitle:
                                            'Demonstration of how to Operate the Clinic "Physician" Application with Arabic\nExplanation in detail.',
                                        leadingIcon:
                                            Icon(Icons.play_circle_filled),
                                        child: Image.asset(
                                          'images/general/purple.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomDivider(),
                    BottomSheetContainer()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
