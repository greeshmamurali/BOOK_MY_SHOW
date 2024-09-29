import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class CompatibleDevices extends StatelessWidget {
  String title;
  CompatibleDevices({required this.title, super.key});

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
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Lorem Ipsum?',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              maxLines: 8,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),

             SizedBox(
              height: 10,
            ),

            Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),)
          ],
        ),
      ),
    );
  }
}
