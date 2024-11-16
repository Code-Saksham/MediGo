import 'package:flutter/material.dart';
import '../ride_request/ride_request_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RideReuestScreen()),
              );
            }),
            child:const  Icon(Icons.arrow_forward)),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.jpeg'),  
          ],
        ));
  }
}
