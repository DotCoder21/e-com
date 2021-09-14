import 'dart:async';

import 'package:firstproject/View/account/payments/cards.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late Position currentPosition;
  var geoLocator = Geolocator();
  late GoogleMapController googleMapController;
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late LatLng latLng;

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;
    latLng = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition =
        new CameraPosition(target: latLng, zoom: 14);
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: ()
            {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 15.0,
              color: AppColors.headingColor,
            ),
          ),
          title: customText(
            'OD-23435232-N',
            textColor: AppColors.headingColor,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: Get.height * 0.07,
                width: Get.width * 0.15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.containerColor),
                child: Icon(
                  Icons.calendar_today,
                  color: AppColors.whiteColor,
                ),
              ),
            )
          ],
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          child: GoogleMap(
            indoorViewEnabled: true,
            trafficEnabled: true,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            compassEnabled: true,
            rotateGesturesEnabled: true,
            scrollGesturesEnabled: true,
            buildingsEnabled: true,
            mapType: MapType.normal,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            minMaxZoomPreference: MinMaxZoomPreference.unbounded,
            onMapCreated: (GoogleMapController controller) {
              _controllerGoogleMap.complete(controller);
              googleMapController = controller;

              locatePosition();
            },
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ),
    );
  }
}
