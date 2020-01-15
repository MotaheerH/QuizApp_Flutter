import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function select;
  final String answerText;

  Answer(this.select, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          autofocus: true,
          color: Colors.amberAccent,
          textColor: Colors.yellow,
          child: Text(answerText),
          onPressed: select,
        ));
  }
}
