import 'package:flutter/material.dart';

class MovieDescription extends StatefulWidget {
   String name;
   String rating;
   String votes;


   MovieDescription({super.key,required this.name,required this.rating,required this.votes});

  @override
  State<MovieDescription> createState() => _MovieDescriptionState();
}

class _MovieDescriptionState extends State<MovieDescription> {
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
        title: Text(widget.name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.share_outlined,
            color: Colors.black.withOpacity(.7),),
          )
        ],
      ),
    );
  }
}