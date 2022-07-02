import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  set dateToday(DateTime dateToday) {}

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(
            child: Text("HI"),
          ),
          Image(
              image: NetworkImage(
                  "https://png.pngtree.com/png-vector/20190413/ourlarge/pngtree-elegant-clean-certificate-vector-template-png-image_936319.jpgl")),
          Text(
              "You have successfully completed Hybride Mobile APP developement Course"),
          Text("INSTRUCTOR NAME"
              "Pankaj Kapoor"),
        ],
      ),
    ); // Scaffold
  }
}
