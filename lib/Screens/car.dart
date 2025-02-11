import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;


import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vector_math/vector_math.dart';

import 'location_apply/location_apply.dart';
import 'profile_screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "HOME_SCREEN";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final List<Marker> _markers = <Marker>[];
  Animation<double>? _animation;
  // late GoogleMapController _controller;

  final _mapMarkerSC = StreamController<List<Marker>>();

  StreamSink<List<Marker>> get _mapMarkerSink => _mapMarkerSC.sink;

  Stream<List<Marker>> get mapMarkerStream => _mapMarkerSC.stream;

  @override
  void initState() {
    super.initState();

    //Starting the animation after 1 second.
    Future.delayed(const Duration(seconds: 1)).then((value) {
      // animateCar(
      //   37.42796133580664,
      //   -122.085749655962,
      //   37.428714,
      //   -122.078301,
      //   _mapMarkerSink,
      //   this,
      //   _controller,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final currentLocationCamera = const CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 10.4746,
    );

    // final googleMap = StreamBuilder<List<Marker>>(
    //     stream: mapMarkerStream,
    //     builder: (context, snapshot) {
    //       return GoogleMap(
    //         mapType: MapType.normal,
    //         initialCameraPosition: currentLocationCamera,
    //         rotateGesturesEnabled: false,
    //         tiltGesturesEnabled: false,
    //         mapToolbarEnabled: false,
    //         myLocationEnabled: false,
    //         myLocationButtonEnabled: false,
    //         zoomControlsEnabled: false,
    //         onMapCreated: (GoogleMapController controller) {
    //           _controller = controller;
    //         },
    //         markers: Set<Marker>.of(snapshot.data ?? []),
    //         padding: EdgeInsets.all(8),
    //       );
    //     });

    return Scaffold(
      body: Stack(
        children: [
          // googleMap,
          // Positioned(
          //   top: h * 0.6,
          //   right: w * 0.05,
          //   child: FloatingActionButton(
          //     backgroundColor: Color.fromARGB(255, 193, 29, 29),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => LocationApply()),
          //       );
          //     },
          //     child: Icon(Icons.arrow_circle_right),
          //   ),
          // ),
          Positioned(
              top: h * 0.1,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrawerScreen()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    child:  Icon(Icons.more_horiz)),
                  )),
          Positioned(
              bottom: h * 0.0,
              left: w * 0.01,
              child: Container(
                width: w * 0.98,
                height: h * 0.2,
                decoration: BoxDecoration(
                    border: (Border.all(
                      width: 0.1,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(15.0)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 209, 200, 200),
                          spreadRadius: 3.0,
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.normal),
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                        top: h * 0.006,
                        left: w * 0.09,
                        child: Text(
                          "Pickup",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 180, 180)),
                        )),
                    Positioned(
                        top: h * 0.006,
                        left: w * 0.4,
                        child: Container(
                          width: w * 0.15,
                          height: h * 0.01,
                          decoration: BoxDecoration(
                            border: (Border.all(
                              width: 0.1,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0)),
                            color: Color.fromARGB(255, 99, 95, 95),
                          ),
                        )),
                    Positioned(
                        top: h * 0.035,
                        left: w * 0.09,
                        child: SizedBox(
                            width: w * 0.8,
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                  hintText: "My current location"),
                            ))),
                    Positioned(
                        top: h * 0.07,
                        left: w * 0.09,
                        child: Text(
                          "Drop-off",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 180, 180)),
                        )),
                    Positioned(
                        top: h * 0.101,
                        left: w * 0.09,
                        child: SizedBox(
                            width: w * 0.8,
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                  hintText: "105 William St,Chicago,US"),
                            ))),
                    Positioned(
                        top: h * 0.1,
                        left: w * 0.01,
                        child: Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 193, 29, 29),
                        )),
                    Positioned(
                        top: h * 0.035,
                        left: w * 0.015,
                        child: Icon(
                          size: 22.0,
                          Icons.album_outlined,
                          color: Color.fromARGB(255, 193, 29, 29),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.015,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: (Border.all(
                                width: 0.1,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("university of washington"),
                          ),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.48,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: (Border.all(
                                width: 0.1,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("Woodland park"),
                          ),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.8,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: (Border.all(
                                width: 0.1,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("husky"),
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }

  setUpMarker() async {
    const currentLocationCamera = LatLng(37.42796133580664, -122.085749655962);

    final pickupMarker = Marker(
      markerId: MarkerId("${currentLocationCamera.latitude}"),
      position: LatLng(
          currentLocationCamera.latitude, currentLocationCamera.longitude),
      icon: BitmapDescriptor.fromBytes(
          await getBytesFromAsset('images/car.png', 50)),
    );

    //Adding a delay and then showing the marker on screen
    await Future.delayed(const Duration(milliseconds: 500));

    _markers.add(pickupMarker);
    _mapMarkerSink.add(_markers);
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  animateCar(
    double fromLat, //Starting latitude
    double fromLong, //Starting longitude
    double toLat, //Ending latitude
    double toLong, //Ending longitude
    StreamSink<List<Marker>>
        mapMarkerSink, //Stream build of map to update the UI
    TickerProvider
        provider, //Ticker provider of the widget. This is used for animation
    GoogleMapController controller, //Google map controller of our widget
  ) async {
    final double bearing =
        getBearing(LatLng(fromLat, fromLong), LatLng(toLat, toLong));

    _markers.clear();

    var carMarker = Marker(
        markerId: const MarkerId("driverMarker"),
        position: LatLng(fromLat, fromLong),
        icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('images/car.png', 50)),
        anchor: const Offset(0.5, 0.5),
        flat: true,
        rotation: 0.0,
        draggable: false);

    //Adding initial marker to the start location.
    _markers.add(carMarker);
    mapMarkerSink.add(_markers);

    final animationController = AnimationController(
      duration: const Duration(seconds: 5), //Animation duration of marker
      vsync: provider, //From the widget
    );

    Tween<double> tween = Tween(begin: 0, end: 1);

    _animation = tween.animate(animationController)
      ..addListener(() async {
        //We are calculating new latitude and logitude for our marker
        final v = _animation!.value;
        double lng = v * toLong + (1 - v) * fromLong;
        double lat = v * toLat + (1 - v) * fromLat;

        LatLng newPos = LatLng(37.42796133580664, -122.085749655962);
        LatLng newPos1 = LatLng(37.42796133080800, -122.015749655200);

        //Removing old marker if present in the marker array

        //New marker location
        carMarker = Marker(
            markerId: const MarkerId("driverMarker"),
            position: newPos,
            icon: BitmapDescriptor.fromBytes(
                await getBytesFromAsset('images/car.png', 50)),
            anchor: const Offset(0.9, 0.5),
            flat: true,
            rotation: 0.0,
            draggable: false);
        carMarker = Marker(
            markerId: const MarkerId("driverMarker1"),
            position: newPos1,
            icon: BitmapDescriptor.fromBytes(
                await getBytesFromAsset('images/car.png', 50)),
            anchor: const Offset(1.0, 12.0),
            flat: true,
            rotation: 0.0,
            draggable: false);

        //Adding new marker to our list and updating the google map UI.
        _markers.add(carMarker);
        mapMarkerSink.add(_markers);

        //Moving the google camera to the new animated location.
        controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(target: newPos, zoom: 10.5)));
      });

    //Starting the animation
    animationController.forward();
  }

  double getBearing(LatLng begin, LatLng end) {
    double lat = (begin.latitude - end.latitude).abs();
    double lng = (begin.longitude - end.longitude).abs();

    if (begin.latitude < end.latitude && begin.longitude < end.longitude) {
      return degrees(atan(lng / lat));
    } else if (begin.latitude >= end.latitude &&
        begin.longitude < end.longitude) {
      return (90 - degrees(atan(lng / lat))) + 90;
    } else if (begin.latitude >= end.latitude &&
        begin.longitude >= end.longitude) {
      return degrees(atan(lng / lat)) + 180;
    } else if (begin.latitude < end.latitude &&
        begin.longitude >= end.longitude) {
      return (90 - degrees(atan(lng / lat))) + 270;
    }
    return -1;
  }
}
