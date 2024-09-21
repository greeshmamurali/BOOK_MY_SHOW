import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';
import 'package:flutter_clone_book/view/upcoming_movies/upcoming_movies.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
   late List<bool> selectedStates;

     void initState() {
    super.initState();
    // Initialize all buttons as not selected
    selectedStates = List.generate(Dummydb.search_list.length, (index) => false);
  }
 

  bool show_first = true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 28,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Now Showing',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                Text(
                  'Kochi  |',
                  style: TextStyle(
                      color: ColorConstants.SEC4_GREY_COLOR, fontSize: 15),
                ),
                Text(
                  '  ${Dummydb.movies.length.toString()} Movies',
                  style: TextStyle(
                      color: ColorConstants.SEC4_GREY_COLOR, fontSize: 15),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        
      ),
      body: Column(
        children: [
          Divider(height: 1,color: ColorConstants.GREY_COLOR.withOpacity(.2),),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                
                children: 
                  List.generate(Dummydb.movie_lang.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                               selectedStates[index] = !selectedStates[index];
              
                        });
                      },
                      child: AnimatedCrossFade(
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
                                '${Dummydb.movie_lang[index]}',
                                style: TextStyle(
                                    color: ColorConstants.PRIMARY_COLOR,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          secondChild: Container(
                              margin: EdgeInsets.only(right: 5,left: 15),
                            width: 85,
                            height: 25,
                            decoration: BoxDecoration(
                                color: ColorConstants.PRIMARY_COLOR,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '${Dummydb.movie_lang[index]} ×',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          crossFadeState: selectedStates[index]
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: Duration(milliseconds: 2)),
                    );
                  })
                ,
              ),
            ),
          ),

          SizedBox(height: 30,),


          GestureDetector(
            onTap: () =>  Navigator.of(context).push(navigationTransition()),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.PRIMARY_COLOR
              ),
              child: Expanded(
                child: Row(
                  children: [
                    Text('Coming Soon',
                    style: TextStyle(
                      color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                
                    Text('  Explore Upcoming Movies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                    ),),
                
                    Spacer(),
                
                    Icon(Icons.chevron_right,color: Colors.white,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

PageRouteBuilder<dynamic> navigationTransition() {
    return PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          UpcomingMovies(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    );
  }
