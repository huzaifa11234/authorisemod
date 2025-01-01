import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txt1 = TextEditingController();
    TextEditingController txt2 = TextEditingController();
    TextEditingController txt3 = TextEditingController();
    TextEditingController txt4 = TextEditingController();
    TextEditingController txt5 = TextEditingController();
    TextEditingController txt6 = TextEditingController();

    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:   Column(
           children: [
             Container(
               width: w*0.8,
               height: h*0.33,
               decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage(
                         "img/otp.webp"
                     ),
                     fit: BoxFit.cover,
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
                       "Enter OTP",
                       style:TextStyle(
                         fontSize: 35,
                         fontWeight: FontWeight.bold,
                       )
                   ),
                 ],
               ),
             ),
             SizedBox(height: 5,),
             Container(
               margin: const EdgeInsets.only(left: 20, right: 50),
               width: w,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                       "An 6 digit code has been send to +91 +919899080276",
                       style:TextStyle(
                         fontSize: 18,
                         color: Colors.grey,
                       )
                   ),
                 ],
               ),
             ),
             SizedBox(height: 40,),
             Row(
               children: [
                 myInputBox(context,txt1),
                 myInputBox(context,txt2),
                 myInputBox(context,txt3),
                 myInputBox(context,txt4),
                 myInputBox(context,txt5),
                 myInputBox(context,txt6),
               ],
             )
           ],
         ),

    );
  }}

  myInputBox(BuildContext context, TextEditingController controller) {
    return Container(
        margin: const EdgeInsets.only(left:5, right: 5),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width:1,),
        borderRadius: const  BorderRadius.all(Radius.circular(3)),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const  TextStyle(fontSize: 30),
        onChanged: (value){
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },
      )

    );
  }

