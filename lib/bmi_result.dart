import 'package:flutter/material.dart';

class BmiRes extends StatelessWidget {

  double height;
  int weight;
  bool isMale;

  BmiRes({
    this.weight,
    this.height,
    this.isMale,
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gender : ${isMale ? "Male" : "Female"} " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox( height : 20),
                Text("Height : ${height.round()} cm " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox( height : 20),
                Text("Weight : $weight kg " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox( height : 20),
                Text("Your BMI : ${weight*height.round()} CAL " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
