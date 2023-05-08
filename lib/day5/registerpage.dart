import 'package:flutter/material.dart';

import '../day6/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _checkbox = false;
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();

  var fname = '', lname = '', email = '', password = '', cpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: Text(
                "Hey there,",
                style: TextStyle(fontSize: 15),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: Text(
                "Create an Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: fnameController,
                decoration: InputDecoration(
                    label: Text("First Name"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: lnameController,
                decoration: InputDecoration(
                    label: Text("Last Name"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    label: Text("Email"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    label: Text("Password"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                controller: confirmpasswordController,
                decoration: InputDecoration(
                    label: Text("Confirm Password"),
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    "By creating an account, you agree to our Conditions of Use and Privacy Notice",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text("Register"),
                  onPressed: () {
                    setState(() {
                      fname = fnameController.text;
                      lname = lnameController.text;
                      email = emailController.text;
                      password = passwordController.text;
                      cpassword = confirmpasswordController.text;
                      if (fname.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your first name")));
                      } else if (lname.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your last name")));
                      } else if (email.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your email")));
                      } else if (password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your password")));
                      } else if (cpassword.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Confirm your password")));
                      }

                      else if(password!=cpassword)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Password must be same")));
                        }
                      else{
Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() ,));
                      }
                    });
                  },
                ),
              ),
            ),
            //  Text(fname)
          ],
        ),
      ]),
    );
  }
}
