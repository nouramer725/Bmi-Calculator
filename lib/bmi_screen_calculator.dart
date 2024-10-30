import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  Bmi(this.result, this.age, this.isMale);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
          color: Colors.white,
        ),
        title: Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 170),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey, // Set the color within BoxDecoration
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender : ${isMale ? 'Male' : 'Female'}',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink, // Change color based on gender
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Result : $result',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink, // Change color based on gender
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Age : $age',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink, // Change color based on gender
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
