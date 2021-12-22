import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  // var long = "0.0";
  // var lat = "0.0";
  String? address;
  void getlocation() async {
    LocationPermission position = await Geolocator.checkPermission();
    if (position == LocationPermission.denied ||
        position == LocationPermission.deniedForever) {
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      // setState(() {
      //   long = currentLoc.longitude.toString();
      //   lat = currentLoc.latitude.toString();
      // });
      getAddress(currentLoc.latitude,currentLoc.longitude);
    }
  }
  void getAddress(double longtitude, double latitude) async{
    List<Placemark> placemarks = await placemarkFromCoordinates(longtitude, latitude);
    Placemark newPlacemark = placemarks.first;
    setState(() {
      address=  newPlacemark.name!
          +', '+newPlacemark.street!
          +', '+newPlacemark.subAdministrativeArea!
          +', '+newPlacemark.administrativeArea!
          +', '+newPlacemark.country!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Location :$address',
                style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),
                  textAlign: TextAlign.center
              ),
            ),
            TextButton(
              onPressed: getlocation,
              child: Text(
                "Get Location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
    );
  }
}
