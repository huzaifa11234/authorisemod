import 'package:flutter/material.dart';

import 'otp_screen.dart';

class ForgotPasssword extends StatelessWidget {
   ForgotPasssword({super.key});
   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
   void _ResetForm(){
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
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
      ),
      body:
      Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Illustration Image
              Container(
                width: w,
                height: h*0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "img/reset_password2.jpg"
                      ),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              SizedBox(height: 15),
              // Title
          Container(
             margin: const EdgeInsets.only(left: 50, right: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                     "Forgot               Password?",
                   style:TextStyle(
                   fontSize: 45,
                   fontWeight: FontWeight.bold,
               )
                ),
              SizedBox(height: 10),
              // Subtitle
                  Text(
                    "Don't worry! It happens. Please enter the      address associated with the account.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.start,
                  ),
              SizedBox(height: 15),
              // Email Input Field
                  Container(
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

                            style: TextStyle(
                              color: Colors.black, // Set text color
                            ),
                            validator: _validateEmail,
                          ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 30),
              // Reset Button
                  InkWell(onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpScreen())
                    );
                  },
                    child: ElevatedButton(
                       onPressed: _ResetForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          minimumSize: const Size(double.infinity ,50,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),

                        ),
                          child: Text('Reset',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),
                      ),
                  ),
            ],
          ),
        ),
        ]
        ),),
      ),
    );
  }
}
