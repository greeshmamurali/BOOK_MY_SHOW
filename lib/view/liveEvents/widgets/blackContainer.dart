import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/gradientContainer.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class blackContainer extends StatelessWidget {
  String title1;
  String title2;
  String gradientTitle1;
  String gradientEventNo1;
  String gradientTitle2;
  String gradientEventNo2;
  List database;

  blackContainer({
    required this.title1,
    required this.title2,
    required this.gradientTitle1,
    required this.gradientEventNo1,
    required this.gradientTitle2,
    required this.gradientEventNo2,
    required this.database,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: ColorConstants.LIVE_EVENT_BG,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  title1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  title2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 8, bottom: 25),
                child: Row(
                  children: [
                    gradientContainer(
                      height: 110,
                      width: 110.toString(),
                      color: ColorConstants.COURSES_AND_MASTERCLASS,
                      title: gradientTitle1,
                      eventNo: gradientEventNo1,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    gradientContainer(
                      height: 110,
                      width: 110.toString(),
                      color: ColorConstants.ENJOY_PLAYS_AND_PERFORMANCES,
                      title: gradientTitle2,
                      eventNo: gradientEventNo2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 300,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: NetworkImage(
                                      database[index]['img']),
                                  height: 190,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 3),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: ColorConstants.SECTION7_BG_COLOR,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Text(
                                  database[index]['date'],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                database[index]['name'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                database[index]['location'],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: ColorConstants.SECTION7_BG_COLOR,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: database.length))
            ],
          ),
        )
      ],
    );
  }
}
