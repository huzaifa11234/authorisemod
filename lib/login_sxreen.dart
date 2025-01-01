import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                 child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.alternate_email),
                      suffixIcon: Icon(Icons.phone_android_rounded),
                      hintText: "Email ID",
                          hintStyle: TextStyle(color: Colors.black),
                    )
                  ),
                  ),

                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border( bottom: BorderSide(color: Colors.white,) )

                  ),
                  child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black),
                      )
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
                  onPressed: () {
                    // Handle sign-up logic
                  },
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 140,
                      color: Colors.grey,
                    ),
                    Text(
                        "OR",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 140,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
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
