import 'dart:io';
import 'package:bmi_calculator/icon_colum.dart';
import 'package:bmi_calculator/reusebale_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = 0xFFEB1555;
const reusablecontColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = reusablecontColor;
      }
    } else {
      maleCardColor = inactiveCardColor;
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = reusablecontColor;
      }
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                        print('Male was pressed');
                      });
                    },
                    child: reusablecont(
                      colour: maleCardColor,
                      cardChild: iconColumn(
                        iconData: FontAwesomeIcons.mars,
                        textData: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.female);
                        });
                      },
                  child: reusablecont(
                    colour: femaleCardColor,
                    cardChild: iconColumn(
                        iconData: FontAwesomeIcons.venus, textData: 'FEMALE'),
                  ),
                  
                ))
              ],
            )),
            Expanded(
                child: Expanded(
                    child: Container(
              color: reusablecontColor,
              margin: const EdgeInsets.all(15.0),
            ))),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: reusablecont(
                      colour: reusablecontColor, cardChild: Column()),
                ),
                Expanded(
                    child: reusablecont(
                        colour: reusablecontColor, cardChild: Column())),
              ],
            )),
            Container(
              color: Color(bottomContainerColor),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
