import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/modalSheet.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/movie_description/movie_description.dart';
import 'package:flutter_clone_book/view/theatre/theatre.dart';

class BookTickets extends StatefulWidget {
  String name;
  String firstLang;
  String dim;
  var selectedIndex;

  BookTickets(
      {required this.name,
      required this.firstLang,
      required this.dim,
      required this.selectedIndex,
      super.key});

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  List rate = [];
  List<dynamic> theatre = [];
  List<dynamic> showTimes = [];

  List dCount = [];

  int selecteddate = 0;

  List<String> Dims = [];

  List<String> langs = [];

  late List<bool> onTapPrice = [];

  List selectedPrices = [];

  bool change = false;

  List selectday = [];
  List selectmonth = [];
  List selectweek = [];

  void initState() {
    super.initState();
    List<String> rates = Dummydb.movies[widget.selectedIndex]['ticket_rates'];
    String result = rates.join(',');
    rate = result.split(',');

    final movieData = Dummydb.movies[widget.selectedIndex];

    if (movieData != null) {
      if (widget.dim == '2D') {
        theatre = movieData['2D_theatre'];
      } else {
        theatre = movieData['3D_theatre'];
      }
    }

    String d = Dummydb.movies[widget.selectedIndex]['D'];
    dCount = d.split(',');

    String dim = Dummydb.movies[widget.selectedIndex]['D'];
    Dims = dim.split(',');

    String lang = Dummydb.movies[widget.selectedIndex]['lang'];
    langs = lang.split(',');

    onTapPrice = List<bool>.filled(rate.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            transitionsBuilder:
            itionAnimation;
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          widget.name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(2),
            child: Divider(
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
              thickness: 2,
            )),
      ),
      body: Column(
        children: [
          dateSection(),

          //ShadowContainer
          shadowContainer(),

          changeSection(),

          Divider(
            height: 1,
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
          ),

          priceContainers(),

          theatreInfo()
        ],
      ),
    );
  }

  Expanded theatreInfo() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
        child: ListView.builder(
            padding: EdgeInsets.only(top: 15),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_outline_outlined,
                          color: ColorConstants.SEC4_GREY_COLOR,
                          size: 14,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            theatre[index]['theatre_name'],
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: ColorConstants.SEC4_GREY_COLOR,
                              size: 14,
                            ),
                            Text(
                              ' INFO',
                              style: TextStyle(
                                  color: ColorConstants.SEC4_GREY_COLOR,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      theatre[index]['cancel'],
                      style: TextStyle(
                          color: ColorConstants.SEC4_GREY_COLOR, fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    timeGrid(index)
                  ],
                ),
              );
            },
            itemCount: theatre.length),
      ),
    );
  }

  GridView timeGrid(int index) {
    return GridView.builder(
      itemCount: theatre[index]['show_time'].length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 10,
          mainAxisExtent: 38),
      itemBuilder: (context, timeindex) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => Theatre(
                theatreIndex: index,
                theatreList: theatre,
                filmname: widget.name,
                day: selectday[selecteddate],
                month: selectmonth[selecteddate],
                dayName: selectweek[selecteddate],
                
              ),
              transitionsBuilder: itionAnimation,
            ));
          },
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4)),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Column(
                children: [
                  Text(
                    theatre[index]['show_time'][timeindex],
                    style: TextStyle(
                        color: ColorConstants.THUMB_UP,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  SizedBox priceContainers() {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  change = true;
                  onTapPrice[index] = !onTapPrice[index];
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: onTapPrice[index]
                        ? ColorConstants.PRIMARY_COLOR
                        : Colors.white,
                    border: Border.all(
                        width: 1,
                        color: onTapPrice[index]
                            ? Colors.transparent
                            : Colors.black),
                    borderRadius: BorderRadius.circular(14)),
                child: Text(
                  rate[index],
                  style: TextStyle(
                      color: onTapPrice[index]
                          ? Colors.white
                          : ColorConstants.PRIMARY_COLOR,
                      fontWeight: FontWeight.w500),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
          itemCount: rate.length),
    );
  }

  Padding changeSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Row(
        children: [
          Text(
            widget.firstLang,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            ' • ${widget.dim}',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          if (dCount.length > 1)
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return modalSheet(
                      widget: MovieDescription(
                        name: Dummydb.movies[widget.selectedIndex]['name'],
                        img: Dummydb.movies[widget.selectedIndex]['img'],
                        lang: Dummydb.movies[widget.selectedIndex]['lang'],
                        thumb: Dummydb.movies[widget.selectedIndex]['thumb'],
                        duration: Dummydb.movies[widget.selectedIndex]
                            ['duration'],
                        genre: Dummydb.movies[widget.selectedIndex]['genre'],
                        age: Dummydb.movies[widget.selectedIndex]['age'],
                        date: Dummydb.movies[widget.selectedIndex]['date'],
                        desc: Dummydb.movies[widget.selectedIndex]['desc'],
                        selectedindex: widget.selectedIndex,
                        Dim: Dummydb.movies[widget.selectedIndex]['D'],
                        comingSoon: true,
                      ),
                      Dims: Dims,
                      FirstLang: langs,
                    );
                  },
                );
              },
              child: Text(
                'Change >',
                style: TextStyle(color: ColorConstants.PRIMARY_COLOR),
              ),
            )
        ],
      ),
    );
  }

  Container shadowContainer() {
    return Container(
      height: 2,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1))
          ]),
    );
  }

  SizedBox dateSection() {
    int day;
    String monthName;
    String dayName;
    return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            double width = MediaQuery.of(context).size.width / 7;
            DateTime today = DateTime.now();
            DateTime displayDate = today.add(Duration(days: index));
            day = displayDate.day;
            selectday.insert(index, day);
            monthName = [
              'JAN',
              'FEB',
              'MAR',
              'APR',
              'MAY',
              'JUN',
              'JUL',
              'AUG',
              'SEP',
              'OCT',
              'NOV',
              'DEC'
            ][displayDate.month - 1];
            selectmonth.insert(index, monthName);

            List<String> dayNames = [
              'SUN',
              'MON',
              'TUE',
              'WED',
              'THU',
              'FRI',
              'SAT'
            ];
            dayName = dayNames[displayDate.weekday % 7];
            selectweek.insert(index, dayName);

            return InkWell(
              onTap: () {
                setState(() {
                  selecteddate = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selecteddate == index
                      ? ColorConstants.PRIMARY_COLOR
                      : Colors.white,
                ),
                width: width,
                child: Column(
                  children: [
                    Text(
                      dayName,
                      style: TextStyle(
                        color: selecteddate == index
                            ? Colors.white
                            : ColorConstants.SEC4_GREY_COLOR,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      '$day',
                      style: TextStyle(
                        color:
                            selecteddate == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      monthName,
                      style: TextStyle(
                        color: selecteddate == index
                            ? Colors.white
                            : ColorConstants.SEC4_GREY_COLOR,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
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
