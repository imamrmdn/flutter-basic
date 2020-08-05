import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var questionIndex = 0;

  void questionAnswer() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s favorite anime?',
      'what\'s favorite eat?',
      'what\'s your hobby?',
    ];
    return Column(
      children: <Widget>[
        Card(
          child: Text(question[questionIndex]),
        ),
        Card(
          child: Text(question[1]),
        ),
        Card(
          child: Text(question[2]),
        ),
        RaisedButton(
          child: Text('Answer 1'),
          onPressed: questionAnswer,
        ),
        RaisedButton(
          child: Text('Answer 2'),
          onPressed: () => print('Answer chosen 2'),
        ),
        RaisedButton(
          child: Text('Answer 3'),
          onPressed: () {
            // ....
            print('Answer chosen 3');
          },
        ),
      ],
    );
  }
}
