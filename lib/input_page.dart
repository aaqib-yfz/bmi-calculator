import 'dart:io';
import 'package:bmi_calculator/icon_colum.dart';
import 'package:bmi_calculator/reusebale_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
const bottomContainerHeight = 80.0;
const bottomContainerColor = 0xFFEB1555;
const reusablecontColor = 0xFF1D1E33;
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body:  Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: reusablecont(
                    colour:Color(reusablecontColor),
                    cardChild: iconColumn( iconData: FontAwesomeIcons.mars, textData: 'MALE',),
                  ),
                ),
                Expanded(
                  child: reusablecont(colour:Color(reusablecontColor),cardChild: iconColumn(iconData: FontAwesomeIcons.venus, textData: 'FEMALE'),),
                )
              ],
            )),
            Expanded(
              child: Expanded(
                child: Container(
                  color: Color(reusablecontColor),
                  margin: const EdgeInsets.all(15.0),
                ))
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: reusablecont(colour:Color(reusablecontColor),cardChild: Column()),
                ),
                Expanded(child: reusablecont(colour:Color(reusablecontColor),cardChild: Column())),
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


