import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email),
                        hintText: "Email ID",
                        hintStyle: TextStyle(color: Colors.black),
                      )
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  width: 300,
                  decoration: const BoxDecoration(
                      border: Border( bottom: BorderSide(color: Colors.white,) )

                  ),
                  child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black),
                      )
                  ),
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

                  child:  Text('Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                  )
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
                )
                  ]
                )
          )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
