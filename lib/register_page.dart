import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

import 'login_sxreen.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
   final TextEditingController _controller = TextEditingController();
  void _SignUpForm(){
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
              height: h*0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "img/register.jpg"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Register",
                      style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.only(left: 25),
                    width: 300,
                    decoration: const BoxDecoration(
                        border: Border( bottom: BorderSide(color: Colors.white,) )

                    ),
                    child:  TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: "Email ID",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      validator: _validateEmail,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        width: 300,
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(color: Colors.white,) )

                        ),
                        child:  TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          validator: _validateEmail,
                          controller: _controller,
                        ),
                      ),
                      Row(
                        children: [
                          FlutterPwValidator(
                              uppercaseCharCount: 2, specialCharCount: 1, normalCharCount: 3, width: 50, height: 50, minLength: 8, onSuccess: (){}, controller: _controller),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                         width: w,
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                          "By signing up, you agree to our Terms & conditions and Privacy Policy",
                      style:TextStyle(
                    fontSize: 14,
                     color: Colors.grey,
           )
           ),
                        SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage())
                      );
                      ElevatedButton(
                        onPressed: _SignUpForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          minimumSize: const Size(double.infinity, 50,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),

                        child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                      );
                    }
                  ),
                  const SizedBox(height: 20,),
                  // Login link
                  InkWell(onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(text: TextSpan(
                            text: 'joined us before?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                              children: [
                              TextSpan(
                              text: 'Login',
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
                    ),
                  )
                    ]
                  )
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
