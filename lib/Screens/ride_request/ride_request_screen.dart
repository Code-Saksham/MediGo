
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../drive_confirm/drive_confirm.dart';

class RideReuestScreen extends StatelessWidget {
  const RideReuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 238, 121, 108),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfirmRideScreen()),
              );
            }),
            child: const Icon(Icons.arrow_forward)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.stretch,
                  children: [
        ClipRRect(
          borderRadius: BorderRadius.circular( 30,),
          child: SizedBox(
            height: 200,
            width: 200,
            child: CircleAvatar(
              radius: 100,
              child: Image.asset('images/logo.jpeg')),
          ),
        ),
        const SizedBox(height: 40,),
        const Center(
          child: Text(
            "Get your ambulance",
            
            style: TextStyle(
                fontFamily: 'Bree Serif',
                fontSize: 35.0,
                fontWeight: FontWeight.bold),
          ),
        ),
         const SizedBox(height: 20,),
        const Center(
          child: Text(
            "Order your ambulance on the go",
            style: TextStyle(
              color: Color.fromARGB(255, 90, 89, 89),
              fontSize: 20.0,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        
                  ],
                ));
  }
}
