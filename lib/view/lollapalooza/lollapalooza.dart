import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lollapalooza extends StatefulWidget {
  const Lollapalooza({super.key});

  @override
  State<Lollapalooza> createState() => _LollapaloozaState();
}

class _LollapaloozaState extends State<Lollapalooza> {
  PageController controller = PageController();
  int currentPage = 0;
  Timer? time;
  bool isExpanded = false;

  ScrollController scrollController = ScrollController();

  String str =
      "The error you're encountering is due to the fact that the flutter_google_maps_webservices package version you're using does not have a direct file named geocoding.dart. This issue may arise from how the package is imported or its API structure.";

  void initState() {
    super.initState();
    time = Timer.periodic(Duration(seconds: 3), (Timer time) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      controller.animateToPage(currentPage,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  void dispose() {
    time?.cancel(); // Cancel the timer when disposing
    controller.dispose(); // Dispose the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 192,
                  width: double.infinity,
                  child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        ImageConstants.LOL_1,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        ImageConstants.LOL_2,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        ImageConstants.LOL_3,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 35,
                            )),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          dotColor: ColorConstants.GREY_COLOR,
                          activeDotColor: Colors.white,
                          dotHeight: 8,
                          dotWidth: 8,
                          expansionFactor: 3),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: ColorConstants.MUSIC_SHOW,
                  borderRadius: BorderRadius.circular(3)),
              child: Text(
                'Music Shows',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Lollapalooza India 2025',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                  color: ColorConstants.VOTES_COLOR.withOpacity(.2),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: ColorConstants.THUMB_UP,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '8.0k are interested',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Mark interested to know about this event',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 23,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            width: 1, color: ColorConstants.PRIMARY_COLOR)),
                    child: Center(
                      child: Text(
                        'Interested?',
                        style: TextStyle(
                            color: ColorConstants.PRIMARY_COLOR,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                height: 1,
                color: ColorConstants.GREY_COLOR.withOpacity(.3),
              ),
            ),

            //calendar
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                        size: 16,
                      )),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Sat 08 Mar 2025 - Sun 09 Mar 2025 02:00 PM onwards',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //Clock
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.clock,
                    color: Colors.black,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      '2.:00 PM',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),

            //all age groups
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.group,
                    color: Colors.black,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Age Limit - 15yrs+',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),

            //language
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.language,
                    color: Colors.black,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'English',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            //marktheater
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.masksTheater,
                    color: Colors.black,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'EDM',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            //location
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Bolgatty Palace and Island Resort: Kochi',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 20,
              color: ColorConstants.VOTES_COLOR.withOpacity(.2),
            ),

            //About the Event
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About The Event',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final span = TextSpan(
                              text: str,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ));
                          final painter = TextPainter(
                            text: span,
                            maxLines: 4,
                            textDirection: TextDirection.ltr,
                          )..layout(maxWidth: constraints.maxWidth);

                          final textOverflow = painter.didExceedMaxLines;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                str,
                                maxLines: isExpanded ? null : 4,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              if (textOverflow)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isExpanded = !isExpanded;
                                    });
                                  },
                                  child: Text(
                                    isExpanded ? 'Read Less' : 'Read more',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ColorConstants.PRIMARY_COLOR,
                                    ),
                                  ),
                                )
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              height: 200,
              color: ColorConstants.VOTES_COLOR.withOpacity(.2),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.YOU_SHOULD_KNOW.withOpacity(.5),
                    ),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.lightbulb,
                          size: 40,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You should know',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Baseline(
                                      baseline: 20,
                                      baselineType: TextBaseline.alphabetic,
                                      child: Text(
                                        '•',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        'The day-wise lineup + single-day tickets are out! Do the smart thing and get your tickets now!',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(15))),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 6),
                                                      child: Text(
                                                        'You Should Know',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 19),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5.0),
                                                      child: GestureDetector(
                                                        onTap: () =>
                                                            Navigator.pop(
                                                                context),
                                                        child: CircleAvatar(
                                                          radius: 12,
                                                          backgroundColor:
                                                              ColorConstants
                                                                  .SEC4_GREY_COLOR
                                                                  .withOpacity(
                                                                      .2),
                                                          child: Center(
                                                              child: Icon(
                                                            Icons.close,
                                                            color: Colors.black,
                                                            size: 17,
                                                          )),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: ColorConstants
                                                      .GREY_COLOR
                                                      .withOpacity(.2),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      textBaseline: TextBaseline
                                                          .alphabetic,
                                                      children: [
                                                        Baseline(
                                                          baseline: 20,
                                                          baselineType:
                                                              TextBaseline
                                                                  .alphabetic,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 15.0),
                                                            child: Text(
                                                              '•',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Expanded(
                                                          child: Text(
                                                            'The day-wise lineup + single-day tickets are out! Do the smart thing and get your tickets now!',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16),
                                                            maxLines: 3,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      textBaseline: TextBaseline
                                                          .alphabetic,
                                                      children: [
                                                        Baseline(
                                                          baseline: 20,
                                                          baselineType:
                                                              TextBaseline
                                                                  .alphabetic,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 15.0),
                                                            child: Text(
                                                              '•',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                                text:
                                                                    'Lolla Platinum tickets are live ',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                    height:
                                                                        1.5),
                                                                children: <TextSpan>[
                                                                  TextSpan(
                                                                      text:
                                                                          "- it's time to elevate your Lolla India experience!",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight: FontWeight
                                                                              .normal,
                                                                          height:
                                                                              1.5))
                                                                ]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      textBaseline: TextBaseline
                                                          .alphabetic,
                                                      children: [
                                                        Baseline(
                                                          baseline: 20,
                                                          baselineType:
                                                              TextBaseline
                                                                  .alphabetic,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 15.0),
                                                            child: Text(
                                                              '•',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Expanded(
                                                          child: RichText(
                                                            maxLines: 8,
                                                            text: TextSpan(
                                                                text:
                                                                    'Ticket Policy:  ',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                    height:
                                                                        1.5),
                                                                children: <TextSpan>[
                                                                  TextSpan(
                                                                      text:
                                                                          "Tickets purchased will be home-delivered to you at a date closer to the event.Tickets are non-cancellable and non-transferable.If you are not attending & buying on behalf of someome, make sure to enter their name and contact details while purchasing.",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight: FontWeight
                                                                              .normal,
                                                                          height:
                                                                              1.5))
                                                                ]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                GestureDetector(
                                                  onTap: () =>
                                                      Navigator.pop(context),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: Colors.grey,
                                                            spreadRadius: 2,
                                                            blurRadius: 3,
                                                            offset:
                                                                Offset(0, -3)),
                                                      ],
                                                      color: Colors.white,
                                                    ),
                                                    // padding: EdgeInsets
                                                    //     .symmetric(
                                                    //         horizontal: 15,
                                                    //         vertical: 13),
                                                    height: 60,
                                                    width: double.infinity,

                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstants
                                                              .PRIMARY_COLOR,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
                                                      child: Center(
                                                        child: Text(
                                                          'Okay, Got It',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: Text(
                                    'Read More',
                                    style: TextStyle(
                                        color: ColorConstants.PRIMARY_COLOR,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            
            DropdownButton<String> (items: , onChanged: onChanged)
          ],
        ),
      ),
    );
  }
}
