import 'package:flutter/material.dart';
import 'package:flutter_app/Screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
              child: Text(
            "Training",
            style: TextStyle(fontSize: 50),
          )),
          Container(
              width: 100,
              height: 400,
              child: Image(
                image: NetworkImage(
                    'https://www.istockphoto.com/photo/webinar-e-learning-skills-business-internet-technology-concepts-training-webinar-e-gm1366428092-436952254?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcourse&utm_term=course%3A%3A%3A'),
              )),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen1();
              }));
            },
            child: const Text("Get Started"),
          ),
        ]),
      ),
    );
  }
}
