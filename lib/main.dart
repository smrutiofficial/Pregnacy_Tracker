import 'package:flutter/material.dart';
import 'home.dart';
import 'Initpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkIfDataExists(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Future hasn't completed yet, return a loading indicator
          return MaterialApp(
            title: "Pregnancy Tracker",
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          // Error occurred while fetching data
          return MaterialApp(
            title: "Pregnancy Tracker",
            home: Scaffold(
              body: Center(
                child: Text("Error: ${snapshot.error}"),
              ),
            ),
          );
        } else {
          // Data exists, navigate to home screen
          return MaterialApp(
            title: "Pregnancy Tracker",
            home: snapshot.data == true ? home() : Initpage(),
          );
        }
      },
    );
  }
}
