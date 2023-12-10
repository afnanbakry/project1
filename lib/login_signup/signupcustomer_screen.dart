import 'package:flutter/material.dart';
import 'package:project1/login_signup/signup_choose.dart';

class SignUpCustomer extends StatefulWidget {
  @override
  State<SignUpCustomer> createState() => _SignUpCustomerState();
}

class _SignUpCustomerState extends State<SignUpCustomer> {
   var formKey = GlobalKey<FormState>();

   bool isVisible = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,iconTheme: IconThemeData(color: Colors.orange,size: 35)),
backgroundColor: Colors.white,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Image.asset(
                "assets/images/img.png",
                width: 300,
                height: 150,
              ),
              Container(
                width: 340,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Create Your Account",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      SizedBox(
                        height: 18,
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: " Username",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'required user name';
                            }else
                              {
                                return null;
                              }
                          },
                        ),
                      ),
                      SizedBox(
                        height:20
                        ,),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'required user number';
                            }else
                            {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: " Phone Number",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(

                          validator: (value) {
                            if(value!.isEmpty){
                              return 'required user address';
                            }else
                            {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: "Email address",
                              labelStyle: const TextStyle(color: Colors.black),
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
                            if(value!.isEmpty){
                              return 'required user password';
                            }else
                            {
                              return null;
                            }
                          },
                          obscureText: isVisible,
                          keyboardType: TextInputType.visiblePassword,
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
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                child:isVisible?Icon(
                                  Icons.remove_red_eye_sharp,
                                  color: Colors.grey,
                                ): Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                              )),
                        ),
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 260,
                        height: 40,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          color: Colors.orange,
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpChoose(),));
                            }
                          },
                          child: Text("Create Account",
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
                              'Already have an account?',
                            ),
                            TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpChoose(),));},
                              child: Text(
                                'Sign in',
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
