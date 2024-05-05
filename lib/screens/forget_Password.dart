
import 'package:flutter/material.dart';
import 'package:project1/login_signup/login_screen.dart';
import 'package:project1/login_signup/signupdilevery.dart';
import 'package:project1/screens/Reset_Password.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forgot Password Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForgetPasswordScreen(),
    );
  }
}






class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

           child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'We will send you an email to reset your password',
                      style: TextStyle(fontSize: 20,color: Colors.grey,),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: 300,
                    height: 58,
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
                    height: 30,
                  ),

                     Container(
                      width: 600,
                      height: 55,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)),
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResestPasswordScreen(),
                              ));
                        },
                        child: Text("Reset a password",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ),

                  SizedBox(height: 20),

                    Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpDilevery(true),
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
                        ),



                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(true),
                          ));
                    },
                    child: Text('OR Login',style: TextStyle(color: Colors.orange),),
                  ),

                    ]),
            ),
               ),
    ),
    );






  }
}
