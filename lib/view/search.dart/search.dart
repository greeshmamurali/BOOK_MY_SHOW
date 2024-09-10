import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 35,
          ),
        ),
        title: Row(
          children: [
            Icon(
              Icons.search,
              color: ColorConstants.SEC4_GREY_COLOR,
            ),
            SizedBox(
              width: 3,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for movies, events & more',
                    hintStyle: TextStyle(
                        color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.3)),
                        border: InputBorder.none
                        ),
              ),
            ),
            Icon(
              Icons.mic,
              color: ColorConstants.GREY_COLOR,
            )
          ],
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(1), 
        child: Container(
           color: const Color.fromARGB(255, 216, 214, 214),
                height: 1,
        )),
      ),
    );
  }
}
