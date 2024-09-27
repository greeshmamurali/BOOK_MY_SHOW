import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:share_plus/share_plus.dart';

class Buyorrent extends StatefulWidget {
  int index;
   Buyorrent({
    required this.index,
    super.key});

  @override
  State<Buyorrent> createState() => _BuyorrentState();
}

class _BuyorrentState extends State<Buyorrent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      


      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*.6,
            child: Image(image: AssetImage(Dummydb.section11[widget.index]['img']),fit: BoxFit.cover,),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: AppBar(
                    backgroundColor: Colors.transparent,
                    leading: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text(Dummydb.section11[widget.index]['name'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,fontSize: 17
                    ),),
                    actions: [
                      InkWell(
            onTap: () {
               Share.share(
                    'Check out this awesome website: https://example.com');
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Icon(Icons.share,color: Colors.white,)))
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
