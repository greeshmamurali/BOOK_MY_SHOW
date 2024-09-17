import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  //late TabController _tabController;
  late List<bool> selectedStates=[false];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 0,
      child: Scaffold(
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
            'Videos',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            ListView.builder(
              itemBuilder: (context, index) {
                return AnimatedCrossFade(
                    firstChild: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 80,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: ColorConstants.GREY_COLOR, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          Dummydb.movies[index]['trailer_lang'],
                          style: TextStyle(
                              color: ColorConstants.PRIMARY_COLOR,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    secondChild: Container(
                      margin: EdgeInsets.only(right: 5, left: 15),
                      width: 85,
                      height: 25,
                      decoration: BoxDecoration(
                          color: ColorConstants.PRIMARY_COLOR,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          Dummydb.movies[index]['trailer_lang'],
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    crossFadeState: selectedStates[index]
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 2));
              },
            )
          ]),
        ),
      ),
    );
  }
}
