import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var _secureText = true;
  String? _nameError = null;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 20,
              controller: _nameController,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Name",
                hintText: "Enter your Name",
                labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                    icon: Icon(
                      _secureText ? Icons.remove_red_eye : Icons.security,
                      color: Colors.blue,
                      size: 30,
                    )),
              ),
              // keyboardType: TextInputType.emailAddress,
              obscureText: _secureText,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      )),
    );
  }
}
