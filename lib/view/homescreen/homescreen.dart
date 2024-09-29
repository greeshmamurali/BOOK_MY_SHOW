import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/eventCard.dart';
import 'package:flutter_clone_book/global_widgets/gradientContainer.dart';
import 'package:flutter_clone_book/global_widgets/musicShows.dart';
import 'package:flutter_clone_book/main.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';
import 'package:flutter_clone_book/view/buyOrRent/buyOrRent.dart';
import 'package:flutter_clone_book/view/location/location.dart';
import 'package:flutter_clone_book/view/lollapalooza/lollapalooza.dart';
import 'package:flutter_clone_book/view/movies/movies.dart';
import 'package:flutter_clone_book/view/notifications/notifications.dart';
import 'package:flutter_clone_book/view/search.dart/search.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../global_widgets/movieCard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late int selectedIndex;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;

  PageController controller = PageController();
  PageController sec11controller = PageController();
  ScrollController scrollController = ScrollController();
  int currentPage1 = 0;
  int currentPage2 = 0;
  Timer? time;
  Timer? time2;

  void reassemble() {
    super.reassemble();

    qrController!.pauseCamera();
    qrController!.resumeCamera();
  }

  void initState() {
    super.initState();

    time = Timer.periodic(Duration(seconds: 3), (Timer time) {
      if (currentPage1 < 2) {
        currentPage1++;
      } else {
        currentPage1 = 0;
      }

      controller.animateToPage(currentPage2,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    });

    time2 = Timer.periodic(Duration(seconds: 3), (Timer time2) {
      if (currentPage2 < 5) {
        currentPage2++;
      } else {
        currentPage2 = 0;
      }

      sec11controller.animateToPage(currentPage2,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  void dispose() {
    time?.cancel();
    time2?.cancel();
    controller.dispose();
    sec11controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts  Here..',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ));
              },
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 17,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Notifications(),
                  transitionsBuilder: itionAnimation,
                ));
              },
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 26,
              ),
              child: GestureDetector(
                onTap: () {
                  Expanded(
                      child: QRView(
                    key: qrKey,
                    onQRViewCreated: (QRViewController qrController) {
                      this.qrController = qrController;
                      qrController.scannedDataStream.listen((scanData) {
                        setState(() {
                          result = scanData;
                        });
                      });
                    },
                  ));

                  Expanded(
                      child: Center(
                    child: (result != null)
                        ? Text(
                            'Barcode Type: ${result!.format} Data: ${result!.code}')
                        : Text('Scan a code'),
                  ));
                },
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Container(
                color: const Color.fromARGB(255, 216, 214, 214),
                height: 1,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Section 1
              titleRowSection(),

              //Section 2
              timerSection(),

              SizedBox(
                height: 39,
              ),

              //Section 3
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image(
                  image: AssetImage(ImageConstants.SINGLE),
                  width: double.infinity,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 36,
              ),

              //Section 4
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Recommended Movies',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        seeAllMovies = true;
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Movies(),
                          transitionsBuilder: itionAnimation,
                        ));
                      },
                      child: Text(
                        'See All >',
                        style: TextStyle(
                            color: ColorConstants.PRIMARY_COLOR,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 16,
              ),

              //Section 5
              movieCard(movies: Dummydb.movies),

              SizedBox(
                height: 25,
              ),

              //Section 6
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image(
                  image: AssetImage(ImageConstants.SINGLE2),
                  height: 80,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 25,
              ),

              //Section 7
              lollapaloozaSection(),

              SizedBox(
                height: 20,
              ),

              //Section 8
              // amusementSection(),

              SizedBox(
                height: 25,
              ),

              //Section 9
              bestEventsThisWeek(),

              SizedBox(
                height: 30,
              ),

              //Section 10
              browseEventsByCategory(),

              SizedBox(
                height: 20,
              ),

              //Section 11
              watchTopMoviesOnline(),
              SizedBox(
                height: 20,
              ),

              //Section 12
              ultimateEventsList(),

              SizedBox(
                height: 20,
              ),

              //Section 13

              mustAttendLiveEvents(),

              SizedBox(
                height: 15,
              ),

              //Section 14

              laughterTherapy(),

              SizedBox(
                height: 15,
              ),

              //Section 15
              topGamesAndSports(),

              SizedBox(
                height: 15,
              ),

              //Section 16
              exploreFunActivities(),

              SizedBox(
                height: 15,
              ),

              //Section 17
              yourMusicStudio(),
            ],
          ),
        ),
      ),
    );
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

  Column yourMusicStudio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Your Music Studio',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
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
                                Dummydb.MUSIC_STUDIO[index]['img']),
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
                            Dummydb.MUSIC_STUDIO[index]['date'],
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          Dummydb.MUSIC_STUDIO[index]['name'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.MUSIC_STUDIO[index]['location'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 10),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.MUSIC_STUDIO[index]['category'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 10),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.MUSIC_STUDIO.length))
      ],
    );
  }

  Column exploreFunActivities() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Explore Fun Activities',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 280,
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
                                Dummydb.FUN_ACTIVITIES[index]['img']),
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
                            Dummydb.FUN_ACTIVITIES[index]['date'],
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          Dummydb.FUN_ACTIVITIES[index]['name'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.FUN_ACTIVITIES[index]['location'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 10),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.FUN_ACTIVITIES.length))
      ],
    );
  }

  Column topGamesAndSports() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Top Games & Sport Events',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 280,
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
                            image: NetworkImage(Dummydb.Games[index]['img']),
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
                            Dummydb.Games[index]['date'],
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          Dummydb.Games[index]['name'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.Games[index]['location'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 10),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.Games.length))
      ],
    );
  }

  Column laughterTherapy() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Laughter Therapy',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'See All >',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 280,
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
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.LAUGHTER_CATEGORY[index]['location'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR, fontSize: 10),
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
    );
  }

  Column mustAttendLiveEvents() {
    return Column(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          color: ColorConstants.SECTION7_BG_COLOR,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: Text(
                      'Must-attend Live Events',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: Text(
                      'See All >',
                      style: TextStyle(
                          color: ColorConstants.PRIMARY_COLOR,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              eventCard()
            ],
          ),
        )
      ],
    );
  }

  Column ultimateEventsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'The Ultimate Events List',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Good times outdoor or at home',
            style: TextStyle(
              color: ColorConstants.SEC4_GREY_COLOR,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 190,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: double.parse(Dummydb.event1[index]['width']),
                //  height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: <Color>[
                          Dummydb.event1[index]['color'][0],
                          Dummydb.event1[index]['color'][1],
                          Dummydb.event1[index]['color'][2],
                        ])),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummydb.event1[index]['text'],
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                Dummydb.event1[index]['events'],
                                style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                mainAxisExtent: 150),
            itemCount: Dummydb.event1.length,
          ),
        )
      ],
    );
  }

  Column watchTopMoviesOnline() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          height: 470,
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.SECTION_11_BG),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Watch top movies online',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Buy or Rent movies on BMS STREAM',
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
                    controller: sec11controller,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      selectedIndex = index;
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      Dummydb.section11[index]['img'],
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
                                        Dummydb.section11[index]['name'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        Dummydb.section11[index]['sec1'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        Dummydb.section11[index]['lang'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        Dummydb.section11[index]['desc'],
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
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
                                    Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          Buyorrent(index: selectedIndex),
                                      transitionsBuilder: itionAnimation,
                                    ));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstants.PRIMARY_COLOR),
                                    child: Center(
                                      child: Text(
                                        'Buy or Rent',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
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
                                controller: sec11controller,
                                count: Dummydb.section11.length,
                                effect: WormEffect(
                                    dotColor: ColorConstants.SEC4_GREY_COLOR,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    activeDotColor:
                                        const Color.fromARGB(255, 3, 36, 63)))
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

  Column browseEventsByCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Browse Events by Category',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Live Events for all your entertainment needs',
            style: TextStyle(
              color: ColorConstants.SEC4_GREY_COLOR,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 100,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return gradientContainer(
                    width: Dummydb.category[index]['width'],
                    color: Dummydb.category[index]['color'],
                    title: Dummydb.category[index]['text'],
                    eventNo: Dummydb.category[index]['events'],
                    height: 190,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.category.length))
      ],
    );
  }

  Column bestEventsThisWeek() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image(
            image: AssetImage(ImageConstants.SECTION_9),
            height: 80,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),

        SizedBox(
          height: 25,
        ),

        //Section 10

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Best Events This Week',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 5,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Monday to Sunday, we got you covered',
            style: TextStyle(
              color: ColorConstants.SEC4_GREY_COLOR,
              fontSize: 14,
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        SizedBox(
            height: 100,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return gradientContainer(
                    width: Dummydb.week[index]['width'],
                    color: Dummydb.week[index]['color'],
                    title: Dummydb.week[index]['text'],
                    eventNo: Dummydb.week[index]['events'],
                    height: 190,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: Dummydb.week.length)),
      ],
    );
  }

  Column amusementSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Amusement Parks For You',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Skip the Queue at the Park, Not the Fun',
            style: TextStyle(
                color: ColorConstants.GREY_COLOR,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 230,
                  // clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(4, 4))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(Dummydb.amusements[index]['img']),
                          height: 100,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          Dummydb.amusements[index]['name'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          Dummydb.amusements[index]['category'],
                          style: TextStyle(
                              color: ColorConstants.SEC4_GREY_COLOR,
                              fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          '\u20B9 ${Dummydb.amusements[index]['price']}',
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          Dummydb.amusements[index]['date'],
                          style: TextStyle(
                              color: ColorConstants.SEC4_GREY_COLOR,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: 3),
        ),
      ],
    );
  }

  Container lollapaloozaSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 280,
      width: double.infinity,
      color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lollapalooza India,2025',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Early Bird Tickets Out Now!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 200,
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lollapalooza(),
                  )),
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: 310,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      Dummydb.lollapalooza[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Dummydb.lollapalooza[index]['title'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 4),
            ),
          )
        ],
      ),
    );
  }

  Widget timerSection() {
    return Stack(
      children: [
        Container(
          height: 192,
          width: double.infinity,
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                child: Image(
                  image: AssetImage(ImageConstants.TIMER_1),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage(ImageConstants.TIMER_2),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage(ImageConstants.TIMER_3),
                  fit: BoxFit.fill,
                ),
              ),
            ],
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
    );
  }

  Column titleRowSection() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    seeAllMovies = true;
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Movies(),
                      transitionsBuilder: itionAnimation,
                    ));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MusicShows(
                        dataBase: Dummydb.MUSIC_STUDIO,
                      ),
                      transitionsBuilder: itionAnimation,
                    ));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.emoji_symbols,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Music\nShows',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.smart_display,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Stream',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MusicShows(dataBase: Dummydb.Games),
                      transitionsBuilder: itionAnimation,
                    ));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_run,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Sports',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MusicShows(dataBase: Dummydb.LAUGHTER_CATEGORY),
                      transitionsBuilder: itionAnimation,
                    ));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.campaign,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Comedy\nShows',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.stacked_line_chart,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
