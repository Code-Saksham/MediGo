
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../components/my_button.dart';
import '../booking_successful/booking_successful.dart';

class RideConfirm extends StatefulWidget {
  RideConfirm({Key? key}) : super(key: key);

  @override
  State<RideConfirm> createState() => _RideConfirmState();
}

class _RideConfirmState extends State<RideConfirm> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
          ),
          Positioned(
              bottom: h * 0.05,
              left: w * 0.105,
              child: Container(
                width: w * 0.75,
                height: h * 0.4,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 255, 253, 253),
                ),
              )),
          Positioned(
              bottom: h * 0.03,
              left: w * 0.065,
              child: Container(
                width: w * 0.83,
                height: h * 0.4,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 209, 200, 200),
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.normal),
                  ],
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 253, 252, 252),
                ),
              )),
          Positioned(
              bottom: h * 0.01,
              left: w * 0.03,
              child: Container(
                width: w * 0.92,
                height: h * 0.4,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 209, 200, 200),
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.normal),
                  ],
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 247, 243, 243),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: h * 0.025,
                        left: w * 0.05,
                        child: SizedBox(
                            width: w * 0.12,
                            height: h * 0.055,
                            child:  Icon(Icons.help))),
                    Positioned(
                        top: h * 0.02,
                        left: w * 0.2,
                        child: Text(
                          "Gregory Smith",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.2,
                        child: SizedBox(
                            width: w * 0.05,
                            height: h * 0.02,
                            child:  Icon(Icons.help))),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.25,
                        child: Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 190, 190, 190)),
                        )),
                    Positioned(
                      top: h * 0.025,
                      left: w * 0.6,
                      child: SizedBox(
                        width: w * 0.11,
                        height: h * 0.06,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 59, 29, 193),
                          onPressed: () {},
                          child: Icon(Icons.message),
                        ),
                      ),
                    ),
                    Positioned(
                      top: h * 0.025,
                      left: w * 0.75,
                      child: SizedBox(
                        width: w * 0.11,
                        height: h * 0.06,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 193, 29, 29),
                          onPressed: () {},
                          child: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Positioned(
                        top: h * 0.1,
                        child: Container(
                          width: w,
                          height: h * 0.15,
                          decoration: BoxDecoration(
                            border:
                                (Border.all(width: 0.1, color: Colors.white)),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Positioned(
                        left: w * 0.03,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child:  Icon(Icons.help))),
                    Positioned(
                        left: w * 0.121,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child:  Icon(Icons.help))),
                    Positioned(
                        left: w * 0.21,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child:  Icon(Icons.help))),
                    Positioned(
                        left: w * 0.35,
                        top: h * 0.13,
                        child: Text(
                          "25 recommended",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )),
                    Positioned(
                        left: w * 0.05,
                        top: h * 0.22,
                        child: SizedBox(
                            width: w * 0.15,
                            height: h * 0.1,
                            child:  Icon(Icons.help))),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.25,
                      child: Text(
                        "Distance",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.45,
                      child: Text(
                        "Time",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.65,
                      child: Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.25,
                        child: Text(
                          "0.2 km",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.45,
                        child: Text(
                          "2 min",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.65,
                        child: Text(
                          "\$25.00",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.32,
                        left: w * 0.01,
                        width: w * 0.9,
                        child: MyButton(
                            onpress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookingSuccessful()),
                              );
                            },
                            btnname: "Confirm")),
                  ],
                ),
              )),
       
        ],
      ),
    )));
  }
}
