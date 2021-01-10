import 'dart:math';

import 'package:flutter/material.dart';
import 'package:proclinic_flutter_website_surge/bottom_sheet_widgets.dart';
import 'package:proclinic_flutter_website_surge/custom_divider.dart';
import 'package:proclinic_flutter_website_surge/homePage.dart';
import 'package:proclinic_flutter_website_surge/under_construction.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(context),
      backgroundColor: Colors.grey[400],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                offset: Offset(4.0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      offset: Offset(0.0, 0.0),
                      blurRadius: 4.0,
                    ),
                  ]),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                                spreadRadius: 7.0),
                          ]),
                      child: UnderConst(),
                    ),
                  ),
                  CustomDivider(),
                  BottomSheetContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
