import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
class Location extends StatefulWidget with ChangeNotifier {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String? address;
  void getLocation() async {
    LocationPermission position = await Geolocator.checkPermission();
    if (position == LocationPermission.denied ||
        position == LocationPermission.deniedForever) {
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      getAddress(currentLoc.latitude,currentLoc.longitude);
    }
  }
  initState (){
    getLocation();
  }
  getAddress(double longitude, double latitude) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(longitude, latitude);
    Placemark newPlacemark = placemarks.first;
    setState(() {address= newPlacemark.street! +', '+
            newPlacemark.subAdministrativeArea! +', '+
            newPlacemark.administrativeArea! +', '+
            newPlacemark.country!;
    });
    super.initState();
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
          ],
        ),
    );
  }
}
