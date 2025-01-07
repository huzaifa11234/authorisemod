import 'package:flutter/material.dart';
import 'forgot_passsword.dart';
import 'register_page.dart';
import 'otp_screen.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  void _loginForm(){
    if(_formkey.currentState!.validate()){}
  }
  String? _validatePhoneNumber(value){
    if(value!.isEmpty){
      return 'please enter a Phone Number';
    }
    if(value.length != 11){
      return 'Please enter a 11 digit Phone Number';
    }
    return  null;
  }
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Form(
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
                            Icons.phone_android_rounded,
                            color: Colors.grey, // Set icon color if needed
                          ),
                          SizedBox(width: 10), // Space between the icon and the text field
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.alternate_email,
                                  color: Colors.grey, // Set icon color if needed
                                ),
                                hintText: "Phone Number",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              validator: _validatePhoneNumber,
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
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OtpScreen())
                        );
                      },
                      child: Container(
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
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
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
                    SizedBox(height: 30,),
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
