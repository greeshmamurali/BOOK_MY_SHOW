import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/main.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController _textEditingController = TextEditingController();
  bool tap = false;
  List filteredCities = [];
  List<dynamic> filteredLocation = [];
   List<dynamic> displayLocations = [];

  void initState() {
    // Initially, filteredCities will have all cities
    filteredCities = Dummydb.cities;
    filteredLocation = Dummydb.location;
    // Listen to changes in the text field
    _textEditingController.addListener(_filterCities);
   
  }

  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  

  void _filterCities() {
    String query = _textEditingController.text.toLowerCase();
    setState(() {
      filteredCities = Dummydb.cities
          .where((city1) => city1.toLowerCase().contains(query))
          .toList();

      filteredLocation = Dummydb.location
          .where(
            (element) =>
                element['name'].toString().toLowerCase().contains(query),
          )
          .toList();
    });
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

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
          selectedPlace,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(2),
            child: Divider(
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
              thickness: 2,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(),
          Divider(
            height: 1,
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
          ),
          
          location(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, top: 16, bottom: 8),
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
            child: Text(
              'POPULAR CITIES',
              style: TextStyle(
                  color: ColorConstants.GREY_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          popularCities(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, top: 16, bottom: 8),
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
            child: Text(
              'OTHER CITIES',
              style: TextStyle(
                  color: ColorConstants.GREY_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          otherCities()
        ],
      ),
    );
  }

  Expanded otherCities() {
    return Expanded(
      child: ListView.builder(
        itemCount: filteredCities.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedPlace = filteredCities[index];
                Navigator.pop(context, selectedPlace);
                
                
              });
            },
            child: Container(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    filteredCities[index],
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    height: 1,
                    color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget popularCities() {
    displayLocations = tap ? filteredLocation : Dummydb.location;
    return SizedBox(
      height: 280,
      child: GridView.builder(
       
        
        itemCount: displayLocations.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
           
          return InkWell(
            onTap: () {
              setState(() {
                selectedPlace = displayLocations[index]['name'];
                Navigator.pop(context, selectedPlace);
               
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),
                      width: 1)),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(displayLocations[index]['img']),
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                    child: Text(
                      displayLocations[index]['name'],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 11),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Padding location() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: GestureDetector(
        onTap: () {
          _determinePosition();
        },
        child: Row(
          children: [
            Icon(
              Icons.my_location,
              color: ColorConstants.PRIMARY_COLOR,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Auto Detect My Location',
              style: TextStyle(
                  color: ColorConstants.PRIMARY_COLOR,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            )
          ],
        ),
      ),
    );
  }

  Row searchBar() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(
            Icons.search,
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.5),
          ),
        ),
        Expanded(
          child: TextField(
            onTap: () {
              setState(() {
                tap = true;
              });
            },
            controller: _textEditingController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                hintText: 'Search for your city',
                hintStyle: TextStyle(
                    color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
          ),
        )
      ],
    );
  }
}

Widget itionAnimation(context, animation, secondaryAnimation, child) {
  var begin = Offset(1.0, 0.0);
  var end = Offset.zero;
  var curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);

  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}
