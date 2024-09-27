import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class oneOutOfThree extends StatelessWidget {
  String name;
  void Function() onCardTap;
   oneOutOfThree({
    required this.name,
    required this.onCardTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCardTap();
      },
      child: Container(
        margin: EdgeInsets.only(left: 15,top: 15),
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 9),
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2)),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Text(name,
        style: TextStyle(
          color: ColorConstants.PRIMARY_COLOR,
          fontSize: 17,fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}