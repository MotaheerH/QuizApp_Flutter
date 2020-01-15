import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(){
//     runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int qIndex = 0;
  void answerQue() {
    setState(() {
      qIndex += 1;
    });

    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questions': 'What is your favourite color',
        'answers': ['White', 'Yellow', 'Green']
      },
      {
        'questions': 'What is your favourite animmal',
        'answers': ['Dogs', 'Lions', 'Horses']
      },
      {
        'questions': 'What is your favourite place',
        'answers': ['Delhi', 'Mumbai', 'Pune']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first flutter App"),
        ),
        body: Column(
          children: [
            Questions(questions[qIndex]['questions']),
            ...(questions[qIndex]['answers'] as List<String>).map((answer) {
              return Answer(answerQue, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
