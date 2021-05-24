import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultsPage({@required this.bmi,@required this.result,@required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI Calculator'),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            result,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF24D876)),
                          ),
                          Text(
                            bmi,
                            style: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 5.0, 0),
                            child: Text(
                              interpretation,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Center(
                    child: Text(
                      'Recalculate',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: bottomColor,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 50.0,
                ),
              ),
            )
          ],
        ));
  }
}
