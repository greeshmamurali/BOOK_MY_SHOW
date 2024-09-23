import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class BookTickets extends StatefulWidget {
  String name;
  String firstLang;
  String dim;

  BookTickets({
    required this.name,
    required this.firstLang,
    required this.dim,
    super.key});

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
        title: Text(widget.name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17
        ),),

        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.search,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.tune,color: Colors.black,),
          ),

        ],
        bottom: PreferredSize(preferredSize: Size.fromHeight(2),
         child: Divider(
          color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
          thickness: 2,
         )),
       
      ),
      
    );
  }
}
