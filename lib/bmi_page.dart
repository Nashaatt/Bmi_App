import 'package:flutter/material.dart';
import 'bmi_result.dart';

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                              isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/gender-symbols-transparent-9.png",
                              height: 90,
                              ),
                              Text("Male" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: isMale ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                                isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network("http://clipart-library.com/images/pT7rqyppc.png",
                              height: 90,
                              ),
                              Text("Female" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: !isMale ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("${height.round()}" , style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Cm" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value){
                         setState(() {
                           height =value;
                         });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                            Text( age.toString() , style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                       age-- ;
                                    });
                                  },
                                  heroTag: "age-",
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: "age+",

                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                            Text( weight.toString() , style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: "weight-",
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    weight++;
                                  },
                                  heroTag: "weight+",

                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: ()
                {
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (c){
                       return BmiRes(
                         height: height,
                         isMale: isMale,
                         weight: weight,
                       );
                     }),
                   );
                },
                height: 50.0,
                child: Text("Calculate",style: TextStyle(color: Colors.white),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
