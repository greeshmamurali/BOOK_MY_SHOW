import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts  Here..',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Kochi >',
                style:
                    TextStyle(color: ColorConstants.PRIMARY_COLOR, fontSize: 12),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 19),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 26, bottom: 19),
              child: Icon(
                Icons.qr_code_scanner_rounded,
                color: Colors.black,
              ),
            ),
          ],
          bottom: PreferredSize(preferredSize: Size.fromHeight(1),
           child: Container(
            color: const Color.fromARGB(255, 216, 214, 214),
            height: 1,
           )),
        ),
        body: Column(
          children: [
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Row(
                     
                      children: [
                        Column(
                          children: [
                            Icon(Icons.camera,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('Movies',
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.emoji_symbols,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('Music\nShows',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.smart_display,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('Stream',
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.directions_run,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('Sports',
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.campaign,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('Comedy\nShows',
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.stacked_line_chart,color: Colors.black,),
                            SizedBox(height: 5,),
                            Text('See All',
                            style: TextStyle(color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                    
                      ],
                    ),
                  ),
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}
