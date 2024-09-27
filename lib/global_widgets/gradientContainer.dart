import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';

class gradientContainer extends StatelessWidget {
  String width;
  double height;
  List color;
  String? title;
  String? eventNo;
  gradientContainer({
    required this.height,
    required this.width,
    required this.color,
    this.title,
    this.eventNo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.parse(width),
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                color[0],
                color[1],
                color[2],
                color[3],
              ])),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(title!=null && title!.isNotEmpty)
                    Text(
                      title!,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    if(eventNo!=null && eventNo!.isNotEmpty)
                    Text(
                      eventNo!,
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
