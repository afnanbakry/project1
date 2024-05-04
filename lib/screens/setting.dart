import 'package:flutter/material.dart';
import 'package:project1/login_signup/signup_choose.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SignUpCustomerState();
}

class _SignUpCustomerState extends State<SettingScreen> {
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


              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 66,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundImage: NetworkImage(

                          'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    ),
                  )
                ],
              ),
              Container(
                width: 340,
                height: 460,
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
                        "User Profile",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),



                      SizedBox(
                        height: 14,
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
                        height:18
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
                      SizedBox(height: 18,),
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
                        height: 15,
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
                          child: Text("UPDATE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
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
