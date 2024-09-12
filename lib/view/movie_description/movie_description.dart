import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';

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
      required this.Dim});

  @override
  State<MovieDescription> createState() => _MovieDescriptionState();
}

class _MovieDescriptionState extends State<MovieDescription> {
  late List languageWidget;

  bool isExpanded = false;

  bool showFirst = true;

  void initState() {
    languageWidget = widget.lang.split(',');
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
              padding: const EdgeInsets.all(10.0),
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Top offers for you',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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
                        return Container(
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
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
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 10,),
                      itemCount: Dummydb.bank_offers.length,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Padding descSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.desc,
            maxLines: isExpanded
                ? null
                : 2, // Show full text if expanded, otherwise limit to 2 lines
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey, // Use ColorConstants.GREY_COLOR if defined
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded; // Toggle the state when tapped
              });
            },
            child: Text(
              isExpanded
                  ? 'less'
                  : 'more', // Show 'more' or 'less' based on state
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
            padding: EdgeInsets.all(3),
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

  Column videoThumbnail() {
    return Column(
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
    );
  }
}
