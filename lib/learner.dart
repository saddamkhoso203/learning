import 'package:flutter/material.dart';

class LearnerView extends StatelessWidget {
  const LearnerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      // appBar: AppBar(
      //   title: Text("First Class"),
      // ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.network(
            "https://techvify-software.com/wp-content/uploads/2023/06/flutter-app-development.png",
            height: 500,
            width: 500,
          ),
          Text(
            "NewsPulse",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 60),
          ),
          Text(
            "Chooose one of our subscriptions and stay informed wherever you are.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
