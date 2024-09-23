import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/view/book_tickets/book_tickets.dart';
import 'package:flutter_clone_book/view/movie_description/movie_description.dart';

class modalSheet extends StatelessWidget {
  const modalSheet({
    super.key,
    required this.widget,
    required this.Dims,
    required this.FirstLang
  });

  final MovieDescription widget;
  final List<String> Dims;
  final List<String> FirstLang;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Select language and format',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 30,
                width: double.infinity,
                color: ColorConstants.SEC4_GREY_COLOR
                    .withOpacity(.3)
                    .withOpacity(.2),
                child: Text(
                  FirstLang[0].toUpperCase(),
                  style: TextStyle(color: ColorConstants.GREY_COLOR),
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                    padding: EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        highlightColor: ColorConstants.PRIMARY_COLOR,
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    BookTickets(name: widget.name,firstLang: FirstLang[0],dim:Dims[index] ,),
                            transitionsBuilder: itionAnimation,
                          ));
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstants.GREY_COLOR, width: 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              Dims[index],
                              style: TextStyle(
                                  color: ColorConstants.PRIMARY_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: Dims.length),
              )
            ],
          ),
        ],
      ),
    );
  }
}
