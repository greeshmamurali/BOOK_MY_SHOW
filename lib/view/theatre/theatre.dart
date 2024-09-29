import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';

class Theatre extends StatefulWidget {
  String filmname;
  int theatreIndex;
  List<dynamic> theatreList;
  int? day;
  String? month;
  String? dayName;
  Theatre(
      {required this.filmname,
      required this.theatreIndex,
      required this.theatreList,
      this.day,
      this.dayName,
      this.month,
      super.key});

  @override
  State<Theatre> createState() => _TheatreState();
}

class _TheatreState extends State<Theatre> {
  bool modalShown = false;
  int selectNumber = 10;
  List rates = [];
  void initState() {
    super.initState();
    rates = widget.theatreList[widget.theatreIndex]['rate'];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!modalShown) {
        modalShown = true;

        showModalSheet(context, widget.theatreIndex, widget.theatreList)
            .then((onValue) {
          selectNumber = onValue + 1;
          setState(() {});
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.filmname,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            Text(
              widget.theatreList[widget.theatreIndex]['theatre_name'],
              style: TextStyle(
                  color: ColorConstants.SEC4_GREY_COLOR,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
              color: ColorConstants.SECTION_11_BG.withOpacity(.3),
            )),
      ),
      body: Column(
        children: [
          Container(
            color: ColorConstants.SECTION7_BG_COLOR,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        '${widget.dayName![0]}${widget.dayName!.substring(1).toLowerCase()}, ${widget.day} ${widget.month![0]}${widget.month!.substring(1).toLowerCase()}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      if (modalShown)
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: ColorConstants.PRIMARY_COLOR,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              selectNumber == 1
                                  ? '${selectNumber} Ticket'
                                  : '${selectNumber} Tickets',
                              style: TextStyle(
                                  color: ColorConstants.PRIMARY_COLOR,
                                  fontSize: 14),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: 65,
                  child: ListView.separated(
                      padding: EdgeInsets.all(15),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: ColorConstants.SEC4_GREY_COLOR
                                      .withOpacity(.4)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  widget.theatreList[widget.theatreIndex]
                                      ['show_time'][index],
                                  style: TextStyle(
                                      color: ColorConstants.THUMB_UP,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 8,
                          ),
                      itemCount: widget
                          .theatreList[widget.theatreIndex]['show_time']
                          .length),
                ),
                // Row(
                //   children: [
                //     SingleChildScrollView(
                //         child: GridView.builder(
                          
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: rates[int.parse('seatno')],
                //         childAspectRatio: 1.0,
                //         crossAxisSpacing: 8.0,
                //         mainAxisSpacing: 8.0,
                //       ),
                //       itemCount:
                //           rates[int.parse('row')] * rates[int.parse('seatno')],
                //       itemBuilder: (context, index) {
                //         return Container(

                //         );
                //       },
                //     ))
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Future<int> showModalSheet(
    BuildContext context, int theatreindex, List<dynamic> theatrelist) async {
  int selectedNumber = 1;
  List<dynamic> ratelist = theatrelist[theatreindex]['rate'];

  final result = await showModalBottomSheet(
    isScrollControlled: true,
    showDragHandle: true,
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            width: double.infinity,
            child: Wrap(
              children: [
                Column(
                  children: [
                    Text(
                      'How many seats?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    if (selectedNumber == 0)
                      Image.asset(
                        ImageConstants.CYCLE,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 1)
                      Image.asset(
                        ImageConstants.BIKE,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 2)
                      Image.asset(
                        ImageConstants.AUTO,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 3)
                      Image.asset(
                        ImageConstants.CAR4,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 4)
                      Image.asset(
                        ImageConstants.CAR1,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 5)
                      Image.asset(
                        ImageConstants.CAR2,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 6 || selectedNumber == 7)
                      Image.asset(
                        ImageConstants.CAR3,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    if (selectedNumber == 8 || selectedNumber == 9)
                      Image.asset(
                        ImageConstants.BUS,
                        height: 60,
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 35,
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(10, (index) {
                            return Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedNumber = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1),
                                  child: CircleAvatar(
                                    backgroundColor: selectedNumber == index
                                        ? ColorConstants.PRIMARY_COLOR
                                        : Colors.transparent,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                          color: selectedNumber == index
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 1,
                      color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
                    ),
                    SingleChildScrollView(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        itemCount: ratelist.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 100,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 30),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ratelist[index]['type'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13),
                                ),
                                Text(
                                  ratelist[index]['rate'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  ratelist[index]['avail'],
                                  style: TextStyle(
                                      color: ColorConstants.THUMB_UP,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, selectedNumber);
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
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: ColorConstants.PRIMARY_COLOR,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              'Select Seats',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
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
  );
  return result ?? 1;
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
