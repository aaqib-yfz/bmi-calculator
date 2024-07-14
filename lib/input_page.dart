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
  start
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

late Gender selectedGender;
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
                        selectedGender = Gender.male;
                        
                      });
                    },
                    child: reusablecont(
                      colour: selectedGender == Gender.male? reusablecontColor:inactiveCardColor,
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
                          selectedGender = Gender.female;
                            });
                      },
                  child: reusablecont(
                    colour: selectedGender == Gender.female? reusablecontColor:inactiveCardColor,
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
              color: const Color(bottomContainerColor),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
