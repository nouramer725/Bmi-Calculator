import 'package:flutter/material.dart';

class bmi extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;

  bmi(
     this.result,
     this.age,
     this.isMale,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
          color: Colors.blueGrey,
        ),
        title:Text(
            'BMI Result',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender : ${isMale ? 'Male' : 'Female'}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Result : $result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Age : $age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}