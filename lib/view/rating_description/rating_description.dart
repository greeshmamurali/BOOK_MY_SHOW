import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/rating_screen/rating_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class RatingDescription extends StatefulWidget {
  String? name;
  String? rating;
  String? votes;
  String? img;
  List reviews = [];
  RatingDescription(
      {this.name, this.rating, this.votes, required this.reviews, this.img,super.key});

  @override
  State<RatingDescription> createState() => _RatingDescriptionState();
}

class _RatingDescriptionState extends State<RatingDescription>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late List<bool> onTapHelpFull;
  late List<bool> onTapUnHelpFull;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    onTapHelpFull = List<bool>.filled(widget.reviews.length, false);
    onTapUnHelpFull = List<bool>.filled(widget.reviews.length, false);
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
          widget.name.toString(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  RatingScreen(image: widget.img.toString(),
                                  name: widget.name.toString(),
                                  review: widget.reviews,),
                          transitionsBuilder: itionAnimation,
                        ));
              },
              child: FaIcon(FontAwesomeIcons.starHalf,color: Colors.black,)),
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Divider(
                    height: 1,
                    color: ColorConstants.GREY_COLOR.withOpacity(.2),
                  ),
                  SizedBox(height: 25),
                  ratingWithStar(),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: ColorConstants.PRIMARY_COLOR,
                        size: 17,
                      ),
                      Text(
                        ' ${widget.rating.toString()}/10',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '  ${widget.votes} Votes',
                        style: TextStyle(
                            color: ColorConstants.SEC4_GREY_COLOR,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 30,
                    width: 140,
                    decoration: BoxDecoration(
                        color: ColorConstants.PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Book tickets',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              labelColor: ColorConstants.PRIMARY_COLOR,
              unselectedLabelColor: ColorConstants.GREY_COLOR,
              indicatorColor: ColorConstants.PRIMARY_COLOR,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  child: Text(
                    'Users (${widget.reviews.length})',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Critics (0)',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildUserReviewsTab(),
                  Center(child: Text('No Critics Reviews Available')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUserReviewsTab() {
    return SingleChildScrollView(
      child: Container(
        color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                'Users say this movie is',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                'Most helpful reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.reviews.length,
              itemBuilder: (context, index) {
                DateTime reviewDate =
                    DateTime.parse(widget.reviews[index]['date']);
                DateTime currentDate = DateTime.now();
                int daysago = currentDate.difference(reviewDate).inDays;

                return Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.reviews[index]['name'],
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '${daysago.toString()} Days ago',
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: ColorConstants.PRIMARY_COLOR,
                                size: 17,
                              ),
                              Text(
                                '${widget.reviews[index]['rating']}/10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Text(
                        widget.reviews[index]['hashtags'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 7),
                      Text(
                        widget.reviews[index]['desc'],
                        style: TextStyle(
                            color: ColorConstants.SEC4_GREY_COLOR,
                            fontSize: 17),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                onTapHelpFull[index] = !onTapHelpFull[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: onTapHelpFull[index]
                                      ? ColorConstants.THUMB_UP
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: onTapHelpFull[index]
                                          ? Colors.transparent
                                          : ColorConstants.SEC4_GREY_COLOR)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: onTapHelpFull[index]
                                        ? Colors.white
                                        : ColorConstants.SEC4_GREY_COLOR,
                                    size: 10,
                                  ),
                                  Text(
                                    ' Helpful',
                                    style: TextStyle(
                                        color: onTapHelpFull[index]
                                            ? Colors.white
                                            : ColorConstants.SEC4_GREY_COLOR,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                onTapUnHelpFull[index] = !onTapUnHelpFull[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: onTapUnHelpFull[index]
                                      ? ColorConstants.THUMB_UP
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: onTapUnHelpFull[index]
                                          ? Colors.transparent
                                          : ColorConstants.SEC4_GREY_COLOR)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_down,
                                    color: onTapUnHelpFull[index]
                                        ? Colors.white
                                        : ColorConstants.SEC4_GREY_COLOR,
                                    size: 10,
                                  ),
                                  Text(
                                    ' Unhelpful',
                                    style: TextStyle(
                                        color: onTapUnHelpFull[index]
                                            ? Colors.white
                                            : ColorConstants.SEC4_GREY_COLOR,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          PopupMenuButton(
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text('Share'),
                                  onTap: () {
                                    Share.share(
                                        'Check out this awesome website: https://example.com');
                                  },
                                ),
                                PopupMenuItem(
                                  child: Text('Report Abuse'),
                                  onTap: () {},
                                ),
                              ];
                            },
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Stack ratingWithStar() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'R',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  'A',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Positioned(
                  child: Icon(
                    Icons.star,
                    color: ColorConstants.PRIMARY_COLOR,
                    size: 10,
                  ),
                )
              ],
            ),
            Text(
              'TINGS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    );
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
