import 'package:flutter/material.dart';
import 'package:project1/layout/layout.dart';
import 'package:project1/login_signup/signup_choose.dart';

class LoginScreen extends StatefulWidget {
  final bool isDriver;

  LoginScreen(this.isDriver);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    bool? isDriverr;
    var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDriverr=widget.isDriver;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.orange, size: 35)),
      backgroundColor: Colors.white,
      body: Form(
    key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/img.png",
                  width: 250,
                  height: 240,
                ),
                Container(
                  width: 340,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Welcome Back!",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Login to your existing account",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user address';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: "Email address",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 58,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user password';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180.0, top: 13),
                        child: Text("forget password?"),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Container(
                        width: 260,
                        height: 40,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          color: Colors.orange,
                          onPressed: () {
                            if(formKey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    LayoutScreen(isDriverr!),));
                            }
                          },

                          child: Text("LOGIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Row(
                          children: [
                            Text(
                              'Don\'t have an account?',
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpChoose(),
                                    ));
                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
