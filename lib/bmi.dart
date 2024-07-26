
import 'dart:math';

import 'package:bmi/bmi_screen_calculator.dart';
import 'package:flutter/material.dart';

class bmiScreen extends StatefulWidget {
  const bmiScreen({super.key});

  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  bool ismale = true;
  double height = 120.0;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Center(
          child: Text(
            'BMI Calculator',
                style: TextStyle(
              fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,

          ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale = true;
                          });
                          },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ismale? Colors.deepPurple[600] : Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,
                                size: 120,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ismale? Colors.grey : Colors.deepPurple[600],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(20)
                          // ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                                size: 120,
                                color: Colors.pinkAccent,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                child: Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Container(
    decoration: BoxDecoration(
    color: Colors.grey, // Set the color within BoxDecoration
    borderRadius: BorderRadius.circular(20),
    ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Text(
                     'Height',
                     style: TextStyle(
                       fontSize: 50,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 SizedBox(
                   height: 10,
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   SizedBox(
                     width: 20,
                   ),
                   Text(
                     '${height.round()}',
                     style: TextStyle(
                       fontSize: 40,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     width: 5,
                   ),
                   Text(
                     'cm',
                     style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
               ]
                 ),
                 Slider(
                   value: height,
                   max: 250,
                   min: 80,
                   onChanged: (value){
                     setState(() {
                       height=value;
                     });
                     print(value.round());
                   },
                 ),
               ],
                ),

             ),

           ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // Set the color within BoxDecoration
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                            
                                  child:
                                  Icon(
                                      Icons.remove
                                  ),
                                  mini: true,
                            
                                ),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                            
                                  child:
                                  Icon(
                                      Icons.add
                                  ),
                                  mini: true,
                            
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // Set the color within BoxDecoration
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  child:
                                  Icon(
                                      Icons.remove
                                  ),
                                  mini: true,
                            
                                ),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                            
                                  child:
                                  Icon(
                                      Icons.add
                                  ),
                                  mini: true,
                            
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey, // Set the color within BoxDecoration
              borderRadius: BorderRadius.circular(20),
            ),
            height: 50,
            width: double.infinity,
            child: MaterialButton(onPressed: (){
              setState(() {

                double result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => bmi(result.round(),age,ismale),
                ),
                );
                 });
            },
            child: Text(
              'Calculate',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
