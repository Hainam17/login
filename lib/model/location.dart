import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
class Location extends StatefulWidget{
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String? address;
  void getLocation() async {
    bool serviceEnabled;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Dịnh vụ định vị bị tắt');
    }
    LocationPermission position = await Geolocator.checkPermission();
    if (position == LocationPermission.denied) {
      position = await Geolocator.requestPermission();
      if (position == LocationPermission.denied) {
        return Future.error('Qyền vị trí bị từ chối');
      }
    }

    if (position == LocationPermission.deniedForever) {
      return Future.error(
          'Quyền vị trí bị từ chối vĩnh viễn, chúng tôi không thể yêu cầu quyền');
    }  else {
      Position currentLoc = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      getAddress(currentLoc.latitude,currentLoc.longitude);
    }
  }
  void initState (){
    super.initState();
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
