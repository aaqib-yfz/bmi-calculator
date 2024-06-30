import 'dart:io';
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
                    cardChild: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text()
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: reusablecont(colour:Color(reusablecontColor),cardChild: Column(),),
                )
              ],
            )),
            Expanded(
              child: Expanded(child: reusablecont(colour:Color(reusablecontColor),cardChild: Column())),
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

class reusablecont extends StatelessWidget {
  reusablecont({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
