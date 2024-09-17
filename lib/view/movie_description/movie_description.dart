import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/video_screen/video_screen.dart';

class MovieDescription extends StatefulWidget {
  String name;
  String rating;
  String votes;
  String Dim;
  String lang;
  String duration;
  String genre;
  String age;
  String date;
  String desc;
  String thumb;
  var selectedindex;

  MovieDescription(
      {super.key,
      required this.name,
      required this.rating,
      required this.votes,
      required this.lang,
      required this.thumb,
      required this.duration,
      required this.genre,
      required this.age,
      required this.date,
      required this.desc,
      required this.selectedindex,
      required this.Dim});

  @override
  State<MovieDescription> createState() => _MovieDescriptionState();
}

class _MovieDescriptionState extends State<MovieDescription> {
  late List languageWidget;

  bool isExpanded = false;

  bool showFirst = true;

  late List<bool> like;
  late List<int> likeCount;

  late List<bool> disLike;
  late List<int> disLikeCount;

  late List reviews;

  void initState() {
    languageWidget = widget.lang.split(',');

    reviews = Dummydb.movies[widget.selectedindex]['reviews'];
    like = List<bool>.filled(reviews.length, false);
    likeCount = List<int>.filled(reviews.length, 0);
    disLike = List<bool>.filled(reviews.length, false);
    disLikeCount = List<int>.filled(reviews.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 35,
            ),
          ),
          title: Text(
            widget.name,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.share_outlined,
                color: Colors.black.withOpacity(.7),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),

              //Section 1
              videoThumbnail(),
              SizedBox(
                height: 20,
              ),

              //Section 2
              ratingContainer(),
              SizedBox(
                height: 20,
              ),

              //Section 3
              dAndLanguage(),
              SizedBox(
                height: 10,
              ),

              //Section 4

              durationSection(),

              SizedBox(
                height: 10,
              ),

              //Section 5
              descSection(),

              SizedBox(
                height: 20,
              ),

              //Section 6
              bankOffers(),

              SizedBox(
                height: 10,
              ),

              Divider(
                height: 1,
                color: ColorConstants.GREY_COLOR,
              ),

              SizedBox(
                height: 20,
              ),

              //Section 7
              topReviews(),

              SizedBox(
                height: 10,
              ),

              Divider(
                height: 1,
                color: ColorConstants.GREY_COLOR,
              ),

              SizedBox(
                height: 20,
              ),

              castSection(),

              SizedBox(
                height: 20,
              ),

              Divider(
                height: 1,
                color: ColorConstants.GREY_COLOR,
              ),

              SizedBox(
                height: 20,
              ),

              crewSection(),

              SizedBox(
                height: 15,
              ),

              Divider(
                height: 1,
                color: ColorConstants.GREY_COLOR,
              ),

              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'You might also like',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'View All >',
                      style: TextStyle(
                          color: ColorConstants.PRIMARY_COLOR, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Column crewSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Crew',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var crewList = Dummydb.movies[widget.selectedindex];
                var crews = crewList['crew'];
                var crew = crews[index];

                return Container(
                  width: 110,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(crew['img']),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Text(
                          crew['name'],
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Text(
                          crew['role'],
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              color: ColorConstants.SEC4_GREY_COLOR,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: (Dummydb.movies[widget.selectedindex]['crew']
                      as List<dynamic>)
                  .length),
        )
      ],
    );
  }

  Column castSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Cast',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var castList = Dummydb.movies[widget.selectedindex];
                var casts = castList['cast'];
                var cast = casts[index];

                return Container(
                  width: 110,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(cast['img']),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Text(
                          cast['name'],
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Text(
                          'Actor',
                          style: TextStyle(
                              color: ColorConstants.SEC4_GREY_COLOR,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: (Dummydb.movies[widget.selectedindex]['cast']
                      as List<dynamic>)
                  .length),
        )
      ],
    );
  }

  Column topReviews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                'Top reviews',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
              Text(
                '987 reviews >',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR, fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Summary of 987 reviews. Tap a hashtag to read more',
            maxLines: 2,
            style: TextStyle(
                color: ColorConstants.SEC4_GREY_COLOR,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var movie = Dummydb.movies[widget.selectedindex];

                var reviews = movie['reviews'];

                var review = reviews[index];

                DateTime reviewDate = DateTime.parse(review['date']);
                DateTime currentDate = DateTime.now();
                int daysago = currentDate.difference(reviewDate).inDays;

                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: ColorConstants.GREY_COLOR),
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor:
                                ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
                            child: Center(
                                child: Icon(
                              Icons.person,
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            review['name'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorConstants.PRIMARY_COLOR,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                review['rating'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        review['hashtags'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final span = TextSpan(
                              text: review['desc'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: ColorConstants.SEC4_GREY_COLOR));

                          final painter = TextPainter(
                            text: span,
                            maxLines: 2,
                            textDirection: TextDirection.ltr,
                          )..layout(maxWidth: constraints.maxWidth);

                          final textOverflow2 = painter.didExceedMaxLines;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                review['desc'],
                                maxLines: 2,
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 13),
                              ),
                              if (textOverflow2)
                                Text(
                                  'Read More >',
                                  style: TextStyle(
                                      color: ColorConstants.PRIMARY_COLOR,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (!like[index]) {
                                        like[index] = true;
                                        likeCount[index]++;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.thumb_up_rounded,
                                    color: like[index]
                                        ? ColorConstants.PRIMARY_COLOR
                                        : ColorConstants.GREY_COLOR,
                                    size: 15,
                                  )),
                              SizedBox(
                                width: 3,
                              ),
                              likeCount[index] > 0
                                  ? Text(
                                      '${likeCount[index]}',
                                      style: TextStyle(
                                          color: ColorConstants.SEC4_GREY_COLOR,
                                          fontSize: 14),
                                    )
                                  : Text('')
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (!disLike[index]) {
                                        disLike[index] = true;
                                        disLikeCount[index]++;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.thumb_down_rounded,
                                    color: disLike[index]
                                        ? ColorConstants.PRIMARY_COLOR
                                        : ColorConstants.GREY_COLOR,
                                    size: 15,
                                  )),
                              SizedBox(
                                width: 3,
                              ),
                              disLikeCount[index] > 0
                                  ? Text(
                                      '${disLikeCount[index]}',
                                      style: TextStyle(
                                          color: ColorConstants.SEC4_GREY_COLOR,
                                          fontSize: 14),
                                    )
                                  : Text(''),
                              SizedBox(
                                width: 65,
                              ),
                              Text(
                                '${daysago.toString()} Days ago',
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: ColorConstants.SEC4_GREY_COLOR,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
              itemCount: (Dummydb.movies[widget.selectedindex]['reviews']
                      as List<dynamic>)
                  .length),
        )
      ],
    );
  }

  Column bankOffers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Top offers for you',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 55,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15))),
                      context: context,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                          expand: false,
                          initialChildSize: .7,
                          minChildSize: 0.3,
                          maxChildSize: 0.9,
                          builder: (context, scrollController) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: ListView(
                                controller: scrollController,
                                children: [
                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage(Dummydb
                                              .bank_offers[index]['img']),
                                          width: 80,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Text(
                                            Dummydb.bank_offers[index]['msg1'],
                                            maxLines: 2,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    Dummydb.bank_offers[index]['expiry'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    Dummydb.bank_offers[index]['desc'],
                                    style: TextStyle(
                                        color: ColorConstants.SEC4_GREY_COLOR,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      });
                },
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: ColorConstants.OFFER_BG,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Image.asset(Dummydb.bank_offers[index]['img']),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummydb.bank_offers[index]['msg1'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Tap to view details',
                                style: TextStyle(
                                    color: ColorConstants.GREY_COLOR,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            itemCount: Dummydb.bank_offers.length,
          ),
        )
      ],
    );
  }

  Padding descSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final span = TextSpan(
                  text: widget.desc,
                  style: TextStyle(
                      fontSize: 13,
                      color: ColorConstants.GREY_COLOR,
                      fontWeight: FontWeight.bold));
              final painter = TextPainter(
                text: span,
                maxLines: 2,
                textDirection: TextDirection.ltr,
              )..layout(maxWidth: constraints.maxWidth);

              final textOverflow = painter.didExceedMaxLines;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.desc,
                    maxLines: isExpanded ? null : 2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: 13,
                        color: ColorConstants.GREY_COLOR,
                        fontWeight: FontWeight.bold),
                  ),
                  if (textOverflow)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        isExpanded ? 'less' : 'more',
                        style: TextStyle(
                            color: ColorConstants.PRIMARY_COLOR,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ],
              );
            },
          )
         
        ],
      ),
    );
  }

  Column durationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '${widget.duration} • ${widget.genre}, • ${widget.age}, • ${widget.date}',
              textAlign: TextAlign.start,
              maxLines: 2,
              style: TextStyle(
                fontSize: 13,
                color: ColorConstants.GREY_COLOR,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column dAndLanguage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: ColorConstants.D_BG,
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  widget.Dim,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              SizedBox(
                width: 2,
              ),

              //checks whether the length of language widget is >3
              languageWidget.length > 2
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          showFirst = !showFirst;
                        });
                      },
                      child: AnimatedCrossFade(
                        firstChild: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: ColorConstants.D_BG,
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            '${languageWidget[0]}, ${languageWidget[1]}, +${languageWidget.length - 2}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ),
                        secondChild: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: ColorConstants.D_BG,
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            widget.lang,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ),
                        crossFadeState: showFirst
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 1),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: ColorConstants.D_BG,
                          borderRadius: BorderRadius.circular(3)),
                      child: Text(
                        widget.lang,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    )
            ],
          ),
        ),
      ],
    );
  }

  Container ratingContainer() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: ColorConstants.VOTES_COLOR.withOpacity(.2),
          borderRadius: BorderRadius.circular(7)),
      child: Row(
        children: [
          Icon(Icons.star, color: ColorConstants.PRIMARY_COLOR.withOpacity(.8)),
          SizedBox(
            width: 3,
          ),
          Text(
            '${widget.rating}/10',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '(${widget.votes} Votes)',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.chevron_right,
            color: ColorConstants.SEC4_GREY_COLOR,
            size: 14,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                border:
                    Border.all(width: 1, color: ColorConstants.PRIMARY_COLOR)),
            child: Center(
              child: Text(
                'Rate now',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector videoThumbnail() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoScreen(),
            ));
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                image: DecorationImage(
                    image: AssetImage(widget.thumb), fit: BoxFit.fill)),
            child: Center(
              child: Container(
                width: 70,
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.black.withAlpha(100),
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Trailer',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontStyle: FontStyle.normal),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 30,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7))),
            child: Center(
              child: Text(
                'In cinemas',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
