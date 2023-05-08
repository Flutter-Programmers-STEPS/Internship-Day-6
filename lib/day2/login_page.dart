import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),

      ),
      body: Column(
        children: [
          Text("Login Here",
          style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),),
          TextField(),
          TextField(),
          ElevatedButton(onPressed: () {

          }, child: Text("Login"))
        ],
      ),
    );
  }
}
