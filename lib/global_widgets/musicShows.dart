import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/eventCard.dart';
import 'package:flutter_clone_book/global_widgets/gradientContainer.dart';
import 'package:flutter_clone_book/global_widgets/oneOutOfThree.dart';
import 'package:flutter_clone_book/main.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class MusicShows extends StatefulWidget {
  List dataBase;
  String text;
  MusicShows({required this.dataBase, required this.text, super.key});

  @override
  State<MusicShows> createState() => _MusicShowsState();
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

class _MusicShowsState extends State<MusicShows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              transitionsBuilder:
              itionAnimation;
            },
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 35,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              Row(
                children: [
                  Text(
                    '${selectedPlace} | ${Dummydb.MUSIC_STUDIO.length} Events',
                    style: TextStyle(
                        color: ColorConstants.SEC4_GREY_COLOR,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(
                height: 1,
                color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.3),
              )),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  oneOutOfThree(
                    name: 'Filters',
                    onCardTap: () {},
                  ),
                  oneOutOfThree(
                    name: 'Sort By',
                    onCardTap: () {},
                  ),
                  oneOutOfThree(
                    name: 'Browse By Venues',
                    onCardTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    musicCard(),
                    trendingAroundYou(),
                    exploreOtherCategories()
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Column trendingAroundYou() {
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
                      'Trending Around You',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              eventCard()
            ],
          ),
        ),
      ],
    );
  }

  Column exploreOtherCategories() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: ColorConstants.SECTION7_BG_COLOR,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Other Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
            color: ColorConstants.SECTION7_BG_COLOR,
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
                itemCount: Dummydb.bottomGradient.length))
      ],
    );
  }

  Widget musicCard() {
    return SizedBox(
      height: 450 * widget.dataBase.length.toDouble() / 2,
      child: GridView.builder(
        padding: EdgeInsets.all(15),
        itemCount: widget.dataBase.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 450,
            crossAxisSpacing: 20,
            childAspectRatio: .45),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(widget.dataBase[index]['img']),
                    fit: BoxFit.cover,
                    height: 270,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                      color: ColorConstants.SECTION7_BG_COLOR,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    widget.dataBase[index]['date'],
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.dataBase[index]['name'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.dataBase[index]['location'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: ColorConstants.SEC4_GREY_COLOR,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
