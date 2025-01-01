import 'package:flutter/material.dart';

class ForgotPasssword extends StatelessWidget {
  const ForgotPasssword({super.key});

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Illustration Image
            Container(
              width: w,
              height: h*0.25,
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
           margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                   "Forgot Password?",
                 style:TextStyle(
                 fontSize: 45,
                 fontWeight: FontWeight.bold,
             )
              ),
            SizedBox(height: 7),
            // Subtitle
                Text(
                  "Don't worry! It happens. Please enter the address associated with the account.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.start,
                ),
            SizedBox(height: 15),
            // Email Input Field
                Container(
                  padding: EdgeInsets.only(left: 15,right: 9),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border( bottom: BorderSide(color: Colors.white,) )
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email),
                        hintStyle: TextStyle(color: Colors.black),
                      )
                  ),
                ),
            SizedBox(height: 30),
            // Reset Button
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

                  child:  Text('Reset',
                      style: TextStyle(
                        color: Colors.white,
                      )
                  ),
                ),
          ],
        ),
      ),
      ]
      ),),
    );
  }
}
