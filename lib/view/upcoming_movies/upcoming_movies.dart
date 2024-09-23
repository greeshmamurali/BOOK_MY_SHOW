import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/global_widgets/movieCard.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/movie_description/movie_description.dart';
import 'package:flutter_clone_book/view/movies/movies.dart';

class UpcomingMovies extends StatefulWidget {
  const UpcomingMovies({super.key});

  @override
  State<UpcomingMovies> createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends State<UpcomingMovies> {
  late List<bool> selectedStates;

  void initState() {
    super.initState();
    // Initialize all buttons as not selected
    selectedStates =
        List.generate(Dummydb.search_list.length, (index) => false);
  }

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
              'Coming soon',
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
                  '  ${Dummydb.upcoming_movies.length.toString()} Movies',
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
          Divider(
            height: 1,
            color: ColorConstants.GREY_COLOR.withOpacity(.2),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: List.generate(Dummydb.movie_lang.length, (index) {
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
                          margin: EdgeInsets.only(right: 5, left: 15),
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
                }),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(navigationTransition()),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.PRIMARY_COLOR),
                child: Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Now Showing',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '  In Cinemas near you',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10,childAspectRatio: .45),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () =>  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder:(context, animation, secondaryAnimation) => MovieDescription(name: Dummydb.upcoming_movies[index]['name']  ,
                     likes: Dummydb.upcoming_movies[index]['likes'],
                      Dim: Dummydb.upcoming_movies[index]['D'],
                      lang: Dummydb.upcoming_movies[index]['lang'],
                      thumb: Dummydb.upcoming_movies[index]['thumb'],
                      duration: Dummydb.upcoming_movies[index]['duration'],
                      genre:  Dummydb.upcoming_movies[index]['genre'],
                      age: Dummydb.upcoming_movies[index]['age'],
                      date: Dummydb.upcoming_movies[index]['date'],
                      desc: Dummydb.upcoming_movies[index]['desc'],
                      img: Dummydb.upcoming_movies[index]['img'],
                      selectedindex: index,
                      comingSoon: true,),
                      transitionsBuilder:transitionAnimation,)
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Container(
                          width: 150,
                          height: 243,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(Dummydb.upcoming_movies[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          height: 20,
                          width: 150,
                          decoration: BoxDecoration(
                              color:
                                  ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: ColorConstants.THUMB_UP,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    Dummydb.upcoming_movies[index]['likes'],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  Text(
                                    'likes',
                                    style: TextStyle(
                                        color: ColorConstants.VOTES_COLOR, fontSize: 10),
                                  ),
                                ],
                              ),
                              Spacer(),
                             Text(Dummydb.upcoming_movies[index]['date'],
                             style: TextStyle(
                              color: Colors.black, fontSize: 10
                             ),)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummydb.upcoming_movies[index]['name'],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                  
                              SizedBox(height: 1,),
                  
                              Text(Dummydb.upcoming_movies[index]['genre'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: ColorConstants.GREY_COLOR,
                                fontSize: 15
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: Dummydb.upcoming_movies.length,
            ),
          )
        ],
      ),
    );
  }

  Widget transitionAnimation(context, animation, secondaryAnimation, child) {
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
        }
}


