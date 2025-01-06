import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double w= MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return  Scaffold(
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
    "Home",
    style:TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    )
    ),
    SizedBox(height: 30,),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          minimumSize: const Size(double.infinity ,50,),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        child:  Text('Home',
            style: TextStyle(
              color: Colors.white,
            )
        ),
      ),
    ]
    ),
        ),]
    ),
    );
  }
}