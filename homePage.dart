import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proclinic_flutter_website_surge/about_page.dart';
import 'package:proclinic_flutter_website_surge/actions_list.dart';
import 'package:proclinic_flutter_website_surge/bottom_sheet_widgets.dart';
import 'package:proclinic_flutter_website_surge/custom_divider.dart';
import 'package:proclinic_flutter_website_surge/grid_view_widget.dart';
import 'package:proclinic_flutter_website_surge/image_carousel_widget.dart';
import 'package:proclinic_flutter_website_surge/social_accounts.dart';
import 'package:proclinic_flutter_website_surge/title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  CarouselController _carcontroller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double xratioheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: CustomAppBar(context),
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
          controller: _scrollController,
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
                  SizedBox(
                    height: xratioheight * 0.05,
                    width: 0.1,
                  ),
                  CustomTitle(
                    title: 'FEATURES :',
                    width: 0.8,
                  ),
                  //image carousel
                  CustomImageCarousel(
                    carouselController: _carcontroller,
                  ),
                  //carosel controls
                  CustomCarouselControls(
                    carouselController: _carcontroller,
                  ),
                  //end of carosel div
                  CustomDivider(),
                  //begining of features grid
                  CustomTitle(
                    title: 'WHAT MAKES PROCLINIC SYSTEM UNIQUE ??',
                    width: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.9,
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
                      child: CustomGrids(),
                    ),
                  ),
                  //end of features grids
                  //to add latter
                  CustomDivider(),
                  //begining of contacts
                  CustomTitle(
                    title: 'CONTACT INFORMATION :',
                    width: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.9,
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
                      child: Row(
                        children: [
                          //social media accounts
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.primaries[Random()
                                              .nextInt(
                                                  Colors.primaries.length)],
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 7.0),
                                    ]),
                                child: SocialAccounts(),
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
                          //contact information
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.primaries[Random()
                                            .nextInt(Colors.primaries.length)],
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 7.0),
                                  ],
                                ),
                                child: EmailPhone(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomDivider(),
                  //bottom sheet
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  BuildContext context;
  CustomAppBar(this.context);
  @override
  Widget build(context) {
    return AppBar(
      // expandedHeight: MediaQuery.of(context).size.height * 0.19,
      // collapsedHeight: MediaQuery.of(context).size.height * 0.11,
      // actions: ,
      toolbarHeight: MediaQuery.of(context).size.height * 0.4,
      backgroundColor: Colors.blue[100].withOpacity(0.7),
      // bottom: PreferredSize(
      //   preferredSize:
      //       Size.fromHeight(MediaQuery.of(context).size.height * 0.4),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: actionslist(context),
      //   ),
      // ),
      title: CustomTitleAppBar(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.20);
}
