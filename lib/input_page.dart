//-------------------------- IMPORTED MODULES --------------------------//
import 'results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculate_brain.dart';

//-------------------------- CONSTANTS & ENUMS--------------------------//
const Color inActiveCardColor = Color(0xFF1D1E33);
const Color activeCardColor = Color(0xFF11328);
const Color bottomColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

//-------------------------- MAIN CLASS --------------------------//
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inActiveCardColor;
  Color femaleColor = inActiveCardColor;
  int sm = 180;
  int weight = 74;
  int age = 19;

  Gender selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = Gender.male;
                    });
                  },
                  child: ReusableContainer(
                    colour: selected == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: MainData(
                      widIcons: FontAwesomeIcons.mars,
                      widText: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = Gender.female;
                    });
                  },
                  child: ReusableContainer(
                      colour: selected == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: MainData(
                        widIcons: FontAwesomeIcons.venus,
                        widText: 'Female',
                      )),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableContainer(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        sm.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: sm.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            sm = newValue.round();
                          });
                        }),
                  )
                ],
              ),
              colour: inActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    colour: inActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "btn1",
                              onPressed: (){
                                setState(() {
                                  weight --;
                                });
                              },
                            backgroundColor: Colors.white38,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 45.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: "btn2",
                              onPressed: (){
                                setState(() {
                                  weight ++;
                                });
                              },
                            backgroundColor: Colors.white38,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    colour: inActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                heroTag: "btn3",
                                onPressed: (){
                                  setState(() {
                                    age --;
                                  });
                                },
                              backgroundColor: Colors.white38,
                                child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 45.0,
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: "btn4",
                              onPressed: (){
                                setState(() {
                                  age ++;
                                });
                              },
                            backgroundColor: Colors.white38,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ),
                          ],
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
             CalculatorBrain calc = CalculatorBrain(height: sm, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultsPage(
                  bmi: calc.calculateBMI(),
                result: calc.getResult(),
                  interpretation: calc.getInterpretation(),)),
              );
            },
            child: Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text('Calculate',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                color: bottomColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 50.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//-------------------------- CUSTOM WIDGETS --------------------------//
class MainData extends StatelessWidget {
  final String widText;
  final IconData widIcons;

  MainData({@required this.widIcons, @required this.widText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widIcons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          widText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableContainer({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
