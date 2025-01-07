import 'package:flutter/material.dart';
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
   String? _validatePassword(String? value) {
     if (value == null || value.isEmpty) {
       return 'Please enter a password';
     }
     if (value.length < 8) {
       return 'Password must be at least 8 characters long';
     }
     // Check for at least one special character
     if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
       return 'Password must include at least one special character';
     }
     // Check for at least two uppercase letters
     if (value.replaceAll(RegExp(r'[^A-Z]'), '').length < 2) {
       return 'Password must include at least two uppercase letters';
     }
     return null;
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
                fit: BoxFit.contain,
                )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Text(
                        "  Login",
                            style:TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )
                      ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.alternate_email,
                          color: Colors.grey, // Set icon color if needed
                        ),
                        SizedBox(width: 10), // Space between the icon and the text field
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.phone_android_rounded,
                                color: Colors.grey, // Set icon color if needed
                              ),
                              hintText: "Email ID",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.black, // Set text color
                            ),
                            validator: _validateEmail,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.grey, // Set icon color if needed
                        ),
                        SizedBox(width: 10), // Space between the icon and the text field
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey, // Set icon color if needed
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.black, // Set text color
                            ),
                            validator: _validatePassword,
                            controller: _controller,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgotPasssword())
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          padding: EdgeInsets.only(right: 15),
                        )),
                        Text(
                          "Forgot password?    ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: ElevatedButton(
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
                            fontSize: 18,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                     padding: EdgeInsets.only(left: 20,right: 15),
                     child: Row(
                      children: const [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("OR",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                        ),
                        Expanded(child: Divider()),
                      ],
                     ),
                   ),
                  SizedBox(height: 35,),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/google_logo.png"),
                    alignment: Alignment.bottomLeft,
                     fit: BoxFit.contain,
                  ),
                ),

                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                        'Login with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
            ]
                ),
                 ),
              SizedBox(height: 50,),
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
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Register',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
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




