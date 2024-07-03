import 'package:flutter/material.dart';
const txtsyle = TextStyle(fontSize: 18.0,
            color: Color(0xFF8D8E98)
          );
class iconColumn extends StatelessWidget {
    iconColumn({
      required this.iconData, required this.textData
  });
  final IconData iconData;
  final String textData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textData,
          style: txtsyle ,
    
        )
      ],
    );
  }
}
