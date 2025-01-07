import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              height: h*0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "img/register.jpg"
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "  Register",
                      style:TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                   SizedBox(height:20,),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
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
                              hintText: "Email ID",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
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
                  const SizedBox(height: 20,),
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
                                fontSize: 22,
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
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "By signing up, you agree to our Terms &      conditions and Privacy Policy",
                          style:TextStyle(
                            fontSize: 22,
                            color: Colors.grey,
                          )
                      ),
                      ]
                )
            ),
                      SizedBox(height: 27,),

                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              margin: const EdgeInsets.only(left: 20, right: 20),
                              child: ElevatedButton(
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
                                      fontSize: 22
                                    )
                                ),
                              ),
                            ),

        SizedBox(height: 30,),
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage())
            );
          },
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(text: TextSpan(
                text: 'joined us before?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: ' Login',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  )
                ]
            )),
          ],
                ),
        ),
          ],
        ),
      ),
    );
  }
}
