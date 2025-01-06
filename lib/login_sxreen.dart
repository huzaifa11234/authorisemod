import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

import 'forgot_passsword.dart';
import 'register_page.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
   final TextEditingController _controller = TextEditingController();
void _loginForm(){
  if(_formkey.currentState!.validate()){}
}
String? _validateEmail(value){
  if(value!.isEmpty){
    return 'please enter a email';
  }
  RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-.]+\.)+[\w-]{2,4}$');
  if(!emailRegExp.hasMatch(value)){
    return 'Please enter a valid Email';
  }
  return  null;
}
   String? _validatePassword(value){
     if(value!.isEmpty){
       return 'please enter a Password';
     }
     if(value.length != 8){
       return 'Please enter a 8 digit Password';
     }
     return  null;
     }
  @override
  Widget build(BuildContext context) {

    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Column(
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
                        prefixIcon: Icon(Icons.alternate_email),
                        suffixIcon: Icon(Icons.phone_android_rounded),
                        hintText: "Email ID",
                            hintStyle: TextStyle(color: Colors.black),

                      ),
                          validator:_validateEmail
                    ),

                    ),

                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border( bottom: BorderSide(color: Colors.white,) )

                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            validator: _validatePassword,
                          controller: _controller,
                        ),
                      ),
                      FlutterPwValidator(
                        uppercaseCharCount: 2,
                          specialCharCount: 1,
                          normalCharCount: 3,
                          width: 50,
                          height: 50,
                          minLength: 8,
                          onSuccess: (){},
                          controller: _controller)
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgotPasssword())
                      );
                    },
                    child: Row(
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: null,
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
                  SizedBox(height: 20,),
                  // Login link
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterPage())
                      );
                    },
                    child: Container(
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

                    ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





