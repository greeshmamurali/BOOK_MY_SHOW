import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
   late List<bool> selectedStates;

     void initState() {
    super.initState();
    // Initialize all buttons as not selected
    selectedStates = List.generate(Dummydb.search_list.length, (index) => false);
  }
 

  bool show_first = true;

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
                    border: InputBorder.none),
              ),
            ),
            Icon(
              Icons.mic,
              color: ColorConstants.GREY_COLOR,
            )
          ],
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              color: const Color.fromARGB(255, 216, 214, 214),
              height: 1,
            )),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                
                children: 
                  List.generate(Dummydb.search_list.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                               selectedStates[index] = !selectedStates[index];
              
                        });
                      },
                      child: AnimatedCrossFade(
                          firstChild: Container(
                            margin: EdgeInsets.only(right: 10,left: 15),
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: ColorConstants.GREY_COLOR, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '${Dummydb.search_list[index]}',
                                style: TextStyle(
                                    color: ColorConstants.PRIMARY_COLOR,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          secondChild: Container(
                            width: 85,
                            height: 25,
                            decoration: BoxDecoration(
                                color: ColorConstants.PRIMARY_COLOR,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '${Dummydb.search_list[index]} x',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          crossFadeState: selectedStates[index]
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: Duration(milliseconds: 2)),
                    );
                  })
                ,
              ),
            ),
          )
        ],
      ),
    );
  }
}
