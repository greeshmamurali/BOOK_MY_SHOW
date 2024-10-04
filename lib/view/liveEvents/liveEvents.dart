import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/gradientContainer.dart';
import 'package:flutter_clone_book/main.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/buyOrRent/buyOrRent.dart';
import 'package:flutter_clone_book/view/liveEvents/widgets/blackContainer.dart';
import 'package:flutter_clone_book/view/location/location.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Liveevents extends StatefulWidget {
  const Liveevents({super.key});

  @override
  State<Liveevents> createState() => _LiveeventsState();
}

class _LiveeventsState extends State<Liveevents> {
  PageController controller = PageController();
  int currentPage1 = 0;
  Timer? time;
  late int selectedIndex;

  void initState() {
    super.initState();

    time = Timer.periodic(Duration(seconds: 3), (Timer time) {
      if (currentPage1 < 2) {
        currentPage1++;
      } else {
        currentPage1 = 0;
      }

      controller.animateToPage(currentPage1,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience Live Events',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () async {
                final result =
                    await Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Location(),
                  transitionsBuilder: itionAnimation,
                ));

                setState(() {
                  selectedPlace = result;
                });
              },
              child: Text(
                '${selectedPlace} >',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR, fontSize: 12),
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Top Container
            categoryContainer(),

            thingsToDoInUrCity(),

            choicesVastButFillingFast(),

            comedyContainer(),

            getSetForWeekend(),

            blackContainer(title1: 'There is more to Music',title2: 'Go on & explore our line-up',gradientTitle1: 'CONCERTS',gradientEventNo1: '8 EVENTS',gradientTitle2: 'MUSIC FESTIVALS',gradientEventNo2: '3 EVENTS',database: Dummydb.MUSIC_STUDIO,),

            pickYourPerfectMix(),

            blackContainer(title1: 'There is more to Sports', title2: 'Get started', gradientTitle1: 'RUNNING', gradientEventNo1: '6 EVENTS', gradientTitle2: 'CHESS', gradientEventNo2: '2 EVENTS', database: Dummydb.Games),

            network(),

            blackContainer(title1: 'There Is More To Amusement Parks', title2: 'Get started', gradientTitle1: 'THEME PARKS', gradientEventNo1: '2 EVENTS', gradientTitle2: 'WATER PARKS', gradientEventNo2: '2 EVENTS', database: Dummydb.FUN_ACTIVITIES),

            exploreMoreExperiences()
          ],
        ),
      ),
    );
  }

  Container exploreMoreExperiences() {
    return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Explore More Experiences',
              style: TextStyle(
                 color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
              ),),

              Text("There's something for everyone",
                style: TextStyle(
                  color: Colors.black,fontSize: 14
                ),),

                SizedBox(height: 25,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      gradientContainer(height: 90, width: 110.toString(), color: ColorConstants.COMEDY,title: 'KIDS',titleSize: 14,eventNo: '4 EVENTS',),
                      SizedBox(width: 10,),
                      gradientContainer(height: 90, width: 110.toString(), color: ColorConstants.COURSES_AND_MASTERCLASS,title: 'PERFORMANCES',titleSize: 14,eventNo: '3 EVENTS',),
                      SizedBox(width: 10,),
                      gradientContainer(height: 90, width: 110.toString(), color: ColorConstants.OUTDOOR_ADVENTURES,title: 'EXHIBITIONS',titleSize: 14,eventNo: '2 EVENTS',),
                      SizedBox(width: 10,),
                      gradientContainer(height: 90, width: 110.toString(), color: ColorConstants.TOMORROW,title: 'ONLINE EVENTS',titleSize: 14,eventNo: '2 EVENTS',),
                      SizedBox(width: 10,),
                    ],
                  ),
                )
            ],
          ),
        );
  }

  Container network() {
    return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Network. Learn. Engage',
                style: TextStyle(
                   color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                ),),

                Text('Level up with workshops, talks and more',
                  style: TextStyle(
                    color: Colors.black,fontSize: 14
                  ),),

                  SizedBox(height: 25,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        gradientContainer(height: 90, width: 100.toString(), color: ColorConstants.COMEDY,title: 'WORKSHOPS',titleSize: 14,),
                        SizedBox(width: 10,),
                        gradientContainer(height: 90, width: 100.toString(), color: ColorConstants.COURSES_AND_MASTERCLASS,title: 'TALKS',titleSize: 14,),
                        SizedBox(width: 10,),
                        gradientContainer(height: 90, width: 100.toString(), color: ColorConstants.OUTDOOR_ADVENTURES,title: 'CONFERENCES',titleSize: 14,),
                        SizedBox(width: 10,),
                        gradientContainer(height: 90, width: 100.toString(), color: ColorConstants.TOMORROW,title: 'MEETUPS',titleSize: 14,),
                        SizedBox(width: 10,),
                      ],
                    ),
                  )
              ],
            ),
          );
  }

  Container pickYourPerfectMix() {
    return Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Pick Your Perfect Mix',
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                  ),),
                ),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                   child: Text('Curated to suit your taste and pocket',
                    style: TextStyle(
                      color: Colors.black,fontSize: 14
                    ),),
                 ),
            
                  SizedBox(height: 20,),

                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        gradientContainer(height: 200, width: 140.toString(), color: ColorConstants.MUSIC_SHOWS,title: 'COMEDY SHOWS\nUNDER',eventNo: '₹499',eventNoSize: 22,titleSize: 20,),
                        SizedBox(width: 15,),
                        gradientContainer(height: 200, width: 140.toString(), color: ColorConstants.COMEDY_MUSIC_AND_MORE,title: 'MUSIC SHOWS\nUNDER',eventNo: '₹1999',eventNoSize: 22,titleSize: 20,),
                        SizedBox(width: 15,),
                        gradientContainer(height: 200, width: 140.toString(), color: ColorConstants.OUTDOOR_ADVENTURES,title: 'ADVENTURE\nUNDER',eventNo: '₹1999',eventNoSize: 22,titleSize: 20,),
                        
                      ],
                    ),
                  )
              ],
            ),
          );
  }

  Column getSetForWeekend() {
    return Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Get Set For The Weekend',
                    style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19
                    ),),
              
                    Text('With this fantastic event line-up',
                    style: TextStyle(
                      color: Colors.black,fontSize: 14
                    ),),
              
                    SizedBox(height: 20,),
              
                   SizedBox(
                    height: 120,
                     child: ListView(
                      
                      scrollDirection: Axis.horizontal,
                      children: [
                        gradientContainer(height: 120, width: 80.toString(), color: ColorConstants.LIVE_EVENTS_BLUE,title: 'COMEDY\nSHOWS',eventNo: '4 EVENTS',eventNoSize: 11,),
                        SizedBox(width: 20,),
                        gradientContainer(height: 200, width: 80.toString(), color: ColorConstants.LIVE_EVENTS_BLUE,title: 'AMUSEMENT\nPARK',eventNo: '3 EVENTS',eventNoSize: 11,),
                        SizedBox(width: 20,),
                        gradientContainer(height: 200, width: 80.toString(), color: ColorConstants.LIVE_EVENTS_BLUE,title: 'MUSIC\nSHOWS',eventNo: '4 EVENTS',eventNoSize: 11,),
                        SizedBox(width: 20,),
                        gradientContainer(height: 200, width: 80.toString(), color: ColorConstants.LIVE_EVENTS_BLUE,title: 'ADVENTURE',eventNo: '3 EVENTS',eventNoSize: 11,),
                        SizedBox(width: 20,),
                        gradientContainer(height: 200, width: 80.toString(), color: ColorConstants.LIVE_EVENTS_BLUE,title: 'PLAYS &\nPERFORMANCES',eventNo: '2 EVENTS',eventNoSize: 11,),
                         SizedBox(width: 20,),
                      ],
                     ),
                   )
                  ],
                ),
              ),
            ],
          );
  }

  Container comedyContainer() {
    return Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: ColorConstants.LIVE_EVENT_BG,
            child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'View all >',
                style: TextStyle(
                    color: ColorConstants.SECTION7_BG_COLOR,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
            height: 260,
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
                                Dummydb.LAUGHTER_CATEGORY[index]['img']),
                            height: 160,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorConstants.SECTION7_BG_COLOR,
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            Dummydb.LAUGHTER_CATEGORY[index]['date'],
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          Dummydb.LAUGHTER_CATEGORY[index]['name'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.SECTION7_BG_COLOR,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.LAUGHTER_CATEGORY[index]['location'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 12,fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.LAUGHTER_CATEGORY.length))
                  ],
                ),
          );
  }

  Container choicesVastButFillingFast() {
    return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('Choices Vast But Filling Fast',
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                  ),),

                  Text('Hurry, explore our range of fun events',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 20,),

                  SizedBox(
                    
                    height: 90,
                    child: ListView(
                      
                      scrollDirection: Axis.horizontal,
                      children: [
                        gradientContainer(height: 90, width: 130.toString(), color: ColorConstants.MUSIC_SHOWS,title: 'FAST-FILLING',titleSize: 16,),
                        SizedBox(width: 10,),
                        gradientContainer(height: 90, width: 130.toString(), color: ColorConstants.WORKSHOPS,title: 'MUST-ATTEND',titleSize: 16,),
                      ],
                    ),
                  ),

                  
              ],
            ),
          );
  }

  Column thingsToDoInUrCity() {
    return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                //height: 450,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Colors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Things to do in your city',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Here's what everyone is booking",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 340,
                        child: PageView.builder(
                          controller: controller,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            selectedIndex = index;
                            return Container(
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            Dummydb.MUST_ATTEND_EVENTS[index]['img'],
                                            width: 170,
                                            height: 255,
                                            fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Dummydb.MUST_ATTEND_EVENTS[index]
                                                  ['name'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            ),
                                            // SizedBox(
                                            //   height: 2,
                                            // ),
                                            Text(
                                              Dummydb.MUST_ATTEND_EVENTS[index]
                                                  ['type'],
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              Dummydb.MUST_ATTEND_EVENTS[index]
                                                  ['desc'],
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              Dummydb.MUST_ATTEND_EVENTS[index]
                                                  ['price'],
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    child: Builder(builder: (context) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(PageRouteBuilder(
                                            pageBuilder: (context, animation,
                                                    secondaryAnimation) =>
                                                Buyorrent(
                                                    index: selectedIndex),
                                            transitionsBuilder:
                                                itionAnimation,
                                          ));
                                        },
                                        child: Container(
                                        //  margin: EdgeInsets.symmetric(horizontal: 20),
                                          height: 50,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: ColorConstants
                                                  .PRIMARY_COLOR),
                                          child: Center(
                                            child: Text(
                                              'Book Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.w800),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SmoothPageIndicator(
                                      controller: controller,
                                      count: Dummydb.section11.length,
                                      effect: WormEffect(
                                          dotColor:
                                              ColorConstants.SEC4_GREY_COLOR,
                                          dotHeight: 8,
                                          dotWidth: 8,
                                          activeDotColor:
                                              const Color.fromARGB(
                                                  255, 3, 36, 63)))
                                ],
                              ),
                            );
                          },
                        )),
                  ],
                ),
              )
            ],
          );
  }

  Container categoryContainer() {
    return Container(
        color: Colors.white,
        height: 150,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    gradientContainer(
                      width: 70.toString(),
                      color: Dummydb.bottomGradient[index]['color'],
                      height: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Dummydb.bottomGradient[index]['bottomtext'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorConstants.SEC4_GREY_COLOR,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: Dummydb.bottomGradient.length));
  }
}



Widget itionAnimation(context, animation, secondaryAnimation, child) {
  var begin = Offset(1.0, 0.0);
  var end = Offset.zero;
  var curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);

  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}
