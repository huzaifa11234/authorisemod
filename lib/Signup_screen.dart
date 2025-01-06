import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  void _loginForm(){
    if(_formkey.currentState!.validate()){}
  }
  String? _validatePhoneNumber(value){
    if(value!.isEmpty){
      return 'please enter a Phone Number';
    }
    if(value.length != 11){
      return 'Please enter a 11 digit Password';
    }
    return  null;
  }
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "img/login.jpg"
                  ),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SizedBox(height: 5,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Login",
                    style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border( bottom: BorderSide(color: Colors.white,) )
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.alternate_email),
                        prefixIcon: Icon(Icons.phone_android_rounded),
                        hintText: "Phone Number",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    validator: _validatePhoneNumber
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: _loginForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size(double.infinity ,50,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  child:  Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                      )
                  ),
                ),
                SizedBox(height: 20,),
                const Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "img/google_logo.png"
                            ),
                            alignment: Alignment.topLeft,
                          )
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle sign-up logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          minimumSize: const Size(double.infinity ,50,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child:  Text('Login with Google',
                            style: TextStyle(
                              color: Colors.black,
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                // Login link
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(text: TextSpan(
                          text: 'New to the App?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                              ),
                            )
                          ]
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
