import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/compatible_devices/compatible_devices.dart';
import 'package:share_plus/share_plus.dart';

class Buyorrent extends StatefulWidget {
  int index;
  Buyorrent({required this.index, super.key});

  @override
  State<Buyorrent> createState() => _BuyorrentState();
}

class _BuyorrentState extends State<Buyorrent> {
  late List langs;
  late List subtitles;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    langs = Dummydb.section11[widget.index]['lang'].toString().split(',');
    subtitles =
        Dummydb.section11[widget.index]['subtitle'].toString().split(',');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 40,
          ),
        ),
        title: Text(
          Dummydb.section11[widget.index]['name'],
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
        ),
        actions: [
          InkWell(
              onTap: () {
                Share.share(
                    'Check out this awesome website: https://example.com');
              },
              child: Padding(
                  padding: EdgeInsets.all(9),
                  child: Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  )))
        ],
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageSection(context),
            blackContainer(context),
            castSection(),
            Divider(
              height: 1,
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
            ),
            crewSection(),
            Divider(
              height: 1,
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
            ),
            youMightAlsoLike()
          ],
        ),
      ),
    );
  }

  Column youMightAlsoLike() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You might also like',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All >',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(Dummydb.section11[index]['img']),
                            height: 180,
                            width: 130,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        Dummydb.section11[index]['name'],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        langs[0],
                        style: TextStyle(
                            color: ColorConstants.SEC4_GREY_COLOR,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: Dummydb.section11.length),
        )
      ],
    );
  }

  Column crewSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Crew',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var castList = Dummydb.movies[widget.index];
                var casts = castList['crew'];
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
              itemCount: (Dummydb.movies[widget.index]['cast'] as List<dynamic>)
                  .length),
        )
      ],
    );
  }

  Column castSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Cast',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var castList = Dummydb.movies[widget.index];
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
              itemCount: (Dummydb.movies[widget.index]['cast'] as List<dynamic>)
                  .length),
        )
      ],
    );
  }

  Container blackContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: 250,
      decoration: BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.black,
            spreadRadius: 10,
            blurRadius: 25,
            offset: Offset(0, -20))
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              premiereContainer(),

              SizedBox(
                width: 5,
              ),

              //Streaming Now
              Container(
                decoration: BoxDecoration(
                    color: ColorConstants.SECTION_11_BG,
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2),
                  child: Text(
                    'Streaming Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),

          rentBuyContainers(context),

          SizedBox(
            height: 10,
          ),

          section4(context),

          SizedBox(
            height: 5,
          ),

          Text(
            '${Dummydb.section11[widget.index]['sec1']} • ${Dummydb.section11[widget.index]['date']}',
            maxLines: 2,
            style: TextStyle(
                color: ColorConstants.SECTION7_BG_COLOR,
                fontWeight: FontWeight.w300),
          ),

          //Description Section
          LayoutBuilder(
            builder: (context, constraints) {
              final span = TextSpan(
                  text: Dummydb.section11[widget.index]['desc'],
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
                    Dummydb.section11[widget.index]['desc'],
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

  Container imageSection(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .7,
      child: Image(
        image: AssetImage(Dummydb.section11[widget.index]['img']),
        fit: BoxFit.cover,
      ),
    );
  }

  InkWell section4(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              width: double.infinity,
              child: Wrap(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Audio:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        Dummydb.section11[widget.index]['lang'],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Subtitles:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        Dummydb.section11[widget.index]['subtitle'],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Row(
        children: [
          Text(
            '•  ${langs[0]}  •  Languages: ',
            style: TextStyle(
                color: ColorConstants.SEC4_GREY_COLOR,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          Text(
            ' Audio(${langs.length}), Subtitles(${subtitles.length})',
            style: TextStyle(
                color: ColorConstants.PRIMARY_COLOR,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Row rentBuyContainers(BuildContext context) {
    return Row(
      children: [
        //rentModalSheet(context),
        InkWell(
          onTap: () {
            String type = 'Rent';
            String desc =
                'You can rent this movie for 30 days but will have 2 days to watch it once you start playback (available for download)';
            modalSheets(context, type, desc);
          },
          child: Container(
            height: 37,
            width: MediaQuery.of(context).size.width * .45,
            decoration: BoxDecoration(
                color: ColorConstants.PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Rent ₹${Dummydb.section11[widget.index]['rent']}',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            String type = 'Buy';
            String desc =
                'Watch the movie any time after purchasing it (available for download)';
                modalSheets(context, type, desc);
          },
          child: Container(
            height: 37,
            width: MediaQuery.of(context).size.width * .45,
            decoration: BoxDecoration(
                color: ColorConstants.PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Buy ₹${Dummydb.section11[widget.index]['buy']}',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> modalSheets(BuildContext context, String type, String desc) {
    return showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) {
        return Container(
          child: Wrap(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      type,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 1,
                    color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '4K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        Spacer(),
                        Text(
                          '₹ ${Dummydb.section11[widget.index]['rent']}  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        Icon(
                          Icons.check_circle_rounded,
                          color: ColorConstants.THUMB_UP,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            CompatibleDevices(
                          title: 'Compatible Devices',
                        ),
                        transitionsBuilder: itionAnimation,
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text:
                                  'Streaming supported on mobile, website, Android TV, Apple TV, and Fire TV. Plays on',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: ' compatible devices',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: ColorConstants.PRIMARY_COLOR,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ])),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            CompatibleDevices(
                          title: 'Terms and Conditions',
                        ),
                        transitionsBuilder: itionAnimation,
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text: 'By continuing, you agree to the',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: ' Terms and Conditions',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: ColorConstants.PRIMARY_COLOR,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ])),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // buyContnueModalSheet(context)

                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            child: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10),
                                      child: Text(
                                        'Update Contact Details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        'Email address',
                                        style: TextStyle(
                                            color: ColorConstants.GREY_COLOR,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: ColorConstants
                                                        .SEC4_GREY_COLOR,
                                                    width: 1)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: ColorConstants
                                                        .GREY_COLOR))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        'Phone number',
                                        style: TextStyle(
                                            color: ColorConstants.GREY_COLOR,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: ColorConstants
                                                        .SEC4_GREY_COLOR,
                                                    width: 1)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: ColorConstants
                                                        .GREY_COLOR))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        'Your number will only be used for transcation confirmation',
                                        style: TextStyle(
                                            color: ColorConstants.GREY_COLOR,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 2,
                                              blurRadius: 3,
                                              offset: Offset(0, -3)),
                                        ],
                                        color: Colors.white,
                                      ),
                                      height: 60,
                                      width: double.infinity,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstants.PRIMARY_COLOR,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            'Update Details',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, -3)),
                        ],
                        color: Colors.white,
                      ),
                      height: 60,
                      width: double.infinity,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: ColorConstants.PRIMARY_COLOR,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  InkWell rentModalSheet(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          builder: (context) {
            return Container(
              child: Wrap(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          'Rent',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'You can rent this movie for 30 days but will have 2 days to watch it once you start playback (available for download)',
                          maxLines: 3,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        height: 1,
                        color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              '4K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                            Spacer(),
                            Text(
                              '₹ ${Dummydb.section11[widget.index]['rent']}  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                            Icon(
                              Icons.check_circle_rounded,
                              color: ColorConstants.THUMB_UP,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    CompatibleDevices(
                              title: 'Compatible Devices',
                            ),
                            transitionsBuilder: itionAnimation,
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                              maxLines: 2,
                              text: TextSpan(
                                  text:
                                      'Streaming supported on mobile, website, Android TV, Apple TV, and Fire TV. Plays on',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text: ' compatible devices',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: ColorConstants.PRIMARY_COLOR,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ])),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    CompatibleDevices(
                              title: 'Terms and Conditions',
                            ),
                            transitionsBuilder: itionAnimation,
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                              maxLines: 2,
                              text: TextSpan(
                                  text: 'By continuing, you agree to the',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text: ' Terms and Conditions',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: ColorConstants.PRIMARY_COLOR,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ])),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buyContnueModalSheet(context)
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        height: 37,
        width: MediaQuery.of(context).size.width * .45,
        decoration: BoxDecoration(
            color: ColorConstants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Rent ₹${Dummydb.section11[widget.index]['rent']}',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }

  InkWell buyContnueModalSheet(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          showDragHandle: true,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              child: Wrap(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Text(
                          'Update Contact Details',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Email address',
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: ColorConstants.SEC4_GREY_COLOR,
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: ColorConstants.GREY_COLOR))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Phone number',
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: ColorConstants.SEC4_GREY_COLOR,
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: ColorConstants.GREY_COLOR))),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Your number will only be used for transcation confirmation',
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: Offset(0, -3)),
                          ],
                          color: Colors.white,
                        ),
                        height: 60,
                        width: double.infinity,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: ColorConstants.PRIMARY_COLOR,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              'Update Details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, -3)),
          ],
          color: Colors.white,
        ),
        height: 60,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: ColorConstants.PRIMARY_COLOR,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Container premiereContainer() {
    return Container(
      decoration: BoxDecoration(
          color: ColorConstants.SECTION_11_BG,
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorConstants.PRIMARY_COLOR,
            radius: 9,
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'PREMIERE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
          ),
          SizedBox(
            width: 2,
          )
        ],
      ),
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
