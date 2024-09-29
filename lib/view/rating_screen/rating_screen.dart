import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class RatingScreen extends StatefulWidget {
  String image;
  String name;
  List review;
  RatingScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.review});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double initial_rating = 0;
  double rating = 0;

  bool onselected = false;

  late List<bool> selectedStates_one;
  late List<bool> selectedStates_two;
  late List<bool> selectedStates_three;

  FocusNode focusNode = FocusNode();
  String? hinttext;

  TextEditingController _textController = TextEditingController();

  void initState() {
    super.initState();
    // Initialize all buttons as not selected
    selectedStates_one =
        List.generate(Dummydb.rating_one.length, (index) => false);
    selectedStates_two =
        List.generate(Dummydb.rating_one.length, (index) => false);
    selectedStates_three =
        List.generate(Dummydb.rating_one.length, (index) => false);

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hinttext = '';
      } else {
        hinttext = 'Your opinion matters';
      }
      setState(() {});
    });
  }

  void dispose() {
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBarContainer(),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(widget.image),
                    height: 200,
                    width: 180,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'How would you rate the movie?',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          initial_rating == 0
                              ? Text(
                                  'SLIDE TO RATE ',
                                  style: TextStyle(
                                      color: ColorConstants.SEC4_GREY_COLOR,
                                      fontSize: 12),
                                )
                              : Text(''),
                          initial_rating == 0
                              ? Icon(
                                  Icons.arrow_right_alt,
                                  color: ColorConstants.SEC4_GREY_COLOR,
                                  size: 12,
                                )
                              : Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Slider(
                            value: initial_rating,
                            min: 0,
                            max: 10,
                            divisions: 10,
                            activeColor: ColorConstants.PRIMARY_COLOR,
                            inactiveColor: ColorConstants.GREY_COLOR,
                            onChanged: (double value) {
                              setState(() {
                                initial_rating = value;

                                if (value == 0) {
                                  rating = 0;
                                } else if (value <= 3) {
                                  rating = 1;
                                } else if (value > 3 && value <= 7) {
                                  rating = 2;
                                } else {
                                  rating = 3;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            '${initial_rating}/10',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      if (rating == 0)
                        Column(
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Your ratings matter!',
                                    style: TextStyle(
                                        color: ColorConstants.SEC4_GREY_COLOR,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    'They help others decide what to watch mext',
                                    style: TextStyle(
                                        color: ColorConstants.SEC4_GREY_COLOR,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      if (rating == 1)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 1,
                                color: ColorConstants.SEC4_GREY_COLOR
                                    .withOpacity(.3),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'What do you think about the movie?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Express yourself with hashtags!',
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index,
                                          Dummydb.rating_one,
                                          selectedStates_one))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 3,
                                          Dummydb.rating_one,
                                          selectedStates_one))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 6,
                                          Dummydb.rating_one,
                                          selectedStates_one))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      if (rating == 2)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 1,
                                color: ColorConstants.SEC4_GREY_COLOR
                                    .withOpacity(.3),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'What do you think about the movie?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Express yourself with hashtags!',
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index,
                                          Dummydb.rating_two,
                                          selectedStates_two))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 3,
                                          Dummydb.rating_two,
                                          selectedStates_two))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 6,
                                          Dummydb.rating_two,
                                          selectedStates_two))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      if (rating == 3)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 1,
                                color: ColorConstants.SEC4_GREY_COLOR
                                    .withOpacity(.3),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'What do you think about the movie?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Express yourself with hashtags!',
                                style: TextStyle(
                                    color: ColorConstants.SEC4_GREY_COLOR,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index,
                                          Dummydb.rating_three,
                                          selectedStates_three))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 3,
                                          Dummydb.rating_three,
                                          selectedStates_three))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ...List<Widget>.generate(
                                      3,
                                      (index) => hashtag(
                                          index + 6,
                                          Dummydb.rating_three,
                                          selectedStates_three))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      initial_rating == 0
                          ? Container()
                          : Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 1,
                                  color:
                                      ColorConstants.GREY_COLOR.withOpacity(.2),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                textField(),
                              ],
                            )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: submitRating(),
    );
  }

  Column textField() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Express more, write a review',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Text(
              '(Optional)',
              style: TextStyle(
                  color: ColorConstants.GREY_COLOR.withOpacity(.5),
                  fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            controller: _textController,
            cursorColor: ColorConstants.PRIMARY_COLOR,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.SEC4_GREY_COLOR, width: 1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorConstants.GREY_COLOR, width: 2)),
              hintText: hinttext,
              labelText: 'Your opinion matters',
              labelStyle: TextStyle(
                  color: ColorConstants.GREY_COLOR.withOpacity(.5),
                  fontSize: 13),
              hintStyle: TextStyle(
                  color: ColorConstants.GREY_COLOR.withOpacity(.5),
                  fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }

  BottomAppBar submitRating() {
    return BottomAppBar(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          String userReview = _textController.text;
          widget.review[3].add(userReview);
        },
        child: Container(
          decoration: BoxDecoration(
            color: initial_rating == 0
                ? ColorConstants.GREY_COLOR
                : ColorConstants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Submit Rating',
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

  Container appBarContainer() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 219, 216, 216),
              spreadRadius: 2, // Spread radius
              blurRadius: 4,
              offset: Offset(1, 3))
        ],
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Center(
            child: Text(
              'How was the movie?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
               
              },
              child: Icon(
                Icons.close,
                color: ColorConstants.GREY_COLOR,
              ),
            ),
          )
        ],
      ),
    );
  }

  hashtag(int index, dynamic name, dynamic states) {
    return GestureDetector(
      onTap: () {
        setState(() {
          states[index] = !states[index];
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(3),
        height: 30,
        decoration: BoxDecoration(
            color: states[index] ? ColorConstants.PRIMARY_COLOR : Colors.white,
            border: Border.all(color: ColorConstants.GREY_COLOR, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            name[index],
            style: TextStyle(
                fontSize: 10,
                color:
                    states[index] ? Colors.white : ColorConstants.PRIMARY_COLOR,
                fontWeight: FontWeight.w300),
          ),
        ),
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
