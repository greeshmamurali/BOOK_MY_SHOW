import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';


class eventCard extends StatelessWidget {
  const eventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(
                            Dummydb.MUST_ATTEND_EVENTS[index]['img']),
                        height: 160,
                        width: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        Dummydb.MUST_ATTEND_EVENTS[index]['date'],
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      Dummydb.MUST_ATTEND_EVENTS[index]['name'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      Dummydb.MUST_ATTEND_EVENTS[index]['location'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorConstants.GREY_COLOR, fontSize: 10),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: Dummydb.MUST_ATTEND_EVENTS.length));
  }
}
