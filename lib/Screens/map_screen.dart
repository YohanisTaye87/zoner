// ignore_for_file: deprecated_member_use, prefer_const_constructors, constant_identifier_names

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:zonerapp/Screens/InfoDetail.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/mapscreen';

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  String googleApikey = "AIzaSyCCT6MWoYFOymnKTRMBmkl6QIzRdWkEPKI";

  final Set<Marker> _markers = {};
  static const _initalCameraPosition =
      CameraPosition(target: LatLng(9.005401, 38.763611), zoom: 12);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final value = NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;
    for (int i = 0; i < 5; i += 1) {
      if (i == 0) {
        _markers.add(Marker(
          markerId: MarkerId((i.toString())),
          position: LatLng(9.035018, 38.750877),
          icon: BitmapDescriptor.defaultMarker,
          onTap: () {
            markerProduct(i, LatLng(9.035018, 38.750877));
          },
        ));
      }
      if (i == 1) {
        _markers.add(Marker(
          markerId: MarkerId((i.toString())),
          position: LatLng(9.024, 39.765),
          icon: BitmapDescriptor.defaultMarker,
          onTap: () {
            markerProduct(i, LatLng(9.035018, 38.750877));
          },
        ));
      } else {
        _markers.add(Marker(
          markerId: MarkerId((i.toString())),
          position: LatLng(37.10, 38.750877),
          icon: BitmapDescriptor.defaultMarker,
          onTap: () {
            markerProduct(i, LatLng(9.035018, 26.77));
          },
        ));
      }
    }

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          GoogleMap(
            markers: _markers,
            initialCameraPosition: _initalCameraPosition,
            zoomControlsEnabled: true,
            myLocationEnabled: true,
            mapType: MapType.hybrid,
            onMapCreated: (GoogleMapController controller) {
              _customInfoWindowController.googleMapController = controller;
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onTap: (postion) {
              _customInfoWindowController.hideInfoWindow!();
            },
          ),
          Positioned(
              bottom: 15,
              right: 0,
              left: 0,
              top: 0,
              child: CustomInfoWindow(
                controller: _customInfoWindowController,
                height: 100,
                width: 150,
                offset: 35,
              ))
        ]));
  }

  // buildContainer(List<Content> searchResultItem, int index) {
  //   return Container(child: Text(searchResultItem[index].title));
  // }

  markerProduct(int i, LatLng latLng) {
    _customInfoWindowController.addInfoWindow!(
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        InfoDetail('Assets/Images/img1.jpg')));
          },
          child: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //border: const Border(bottom: BorderSide(width: 10)),
              image: DecorationImage(
                  image: AssetImage(
                    'Assets/Images/img1.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        latLng);
  }
}
