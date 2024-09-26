import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
             Navigator.pop(context);
            transitionsBuilder:
            itionAnimation;
          },
          child: Icon(Icons.chevron_left,color: Colors.black,size: 27,)),
        title: Text('Notifications',
        style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18
        ),),
        bottom: PreferredSize(preferredSize: Size.fromHeight(.1), child: Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),)),
      ),
    
    
      body: DefaultTabController(length: 2, child: Column(
        children: [
          TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),
            labelColor: ColorConstants.PRIMARY_COLOR,
            unselectedLabelColor: ColorConstants.GREY_COLOR,
            indicatorColor: ColorConstants.PRIMARY_COLOR,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
            Tab(text: 'Offers & More',),
            Tab(text: 'Tickets & Streams',)
          ]),

          Expanded(
            child: TabBarView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(ImageConstants.NOTIFICATION_BELL),height: 150,width: 150,),
                  SizedBox(height: 20,),
                  Text('No Offers Available',
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w600
                  ),),

                  SizedBox(height: 10,),

                  Text('Watch this space for offers',
                  style: TextStyle(
                    color: ColorConstants.SEC4_GREY_COLOR
                  ),)
                ],
              ),
            
            
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(ImageConstants.NOTIFICATION_BELL),height: 150,width: 150),
                                    SizedBox(height: 20,),
                  Text('No Offers Available',
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w600
                  ),),

                  SizedBox(height: 10,),

                  Text('Watch this space for offers',
                  style: TextStyle(
                    color: ColorConstants.SEC4_GREY_COLOR
                  ),)
                ],
                           )
            ]),
          )
        ],
      )),
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