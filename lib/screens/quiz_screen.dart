import 'package:flutter/material.dart';
import 'package:favelasemcorona/models/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatelessWidget {
  static const String id = 'quiz_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper =[];

  void checkAnswer(bool userPickedAnswer){
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true){
        Alert(
          context: context,
          title: 'Fim!',
          desc: 'Parabéns você terminou o jogo.'
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      }
      else {
        if (userPickedAnswer == correctAnswer){
          scoreKeeper.add(Icon(Icons.thumb_up, color: Colors.green, size: 15,));
        } else {
          scoreKeeper.add(Icon(Icons.close, color: Colors.red,size: 15,));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('FATO', style: TextStyle(color: Colors.white, fontSize: 20.0),),
              onPressed: (){
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
          padding: EdgeInsets.all(15),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text('FAKE', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            onPressed: (){
              checkAnswer(false);
            },
          ),
        ),),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }

  }


