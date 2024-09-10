import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class movieCard extends StatelessWidget {
  const movieCard({
    super.key,
    required this.movies,
  });

  final List movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 323,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 243,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(movies[index]['img']),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 6, vertical: 4),
                  height: 20,
                  width: 150,
                  decoration: BoxDecoration(
                      color: ColorConstants.SEC4_GREY_COLOR
                          .withOpacity(.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorConstants.PRIMARY_COLOR,
                            size: 14,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            movies[index]['rating'],
                            style: TextStyle(
                                color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: movies[index]['votes'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10)),
                            TextSpan(
                                text: '  Votes',
                                style: TextStyle(
                                    color: ColorConstants.VOTES_COLOR,
                                    fontSize: 8)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  child: Text(
                    movies[index]['name'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: movies.length),
    );
  }
}
