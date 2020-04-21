import 'package:favelasemcorona/screens/menu_icons_screen.dart';
import 'package:flutter/material.dart';
import 'package:favelasemcorona/models/quiz_brain.dart';
import 'package:favelasemcorona/constants.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatelessWidget {
  static const String id = 'quiz_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: nearlyWhite,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color:Colors.black),
        title: Text("Stop COVID-19", style: TextStyle(color: Colors.black),),
      ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: QuizPage(),
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
  bool displayInfo = false;
  String note = '';

  void checkAnswer(int userPickedAnswer){
    bool correctAnswer = quizBrain.getCorrectAnswer(userPickedAnswer);

    setState(() {
      if (quizBrain.isFinished() == true)
      {
        showDialog(context: context, builder: (context){
         return AlertDialog(
           content: Text('Parabens voce terminou o jogo!'),
           title: Text("FIM"),
           actions: <Widget>[
             FlatButton(
           child: Text('OK'),
           onPressed: (){
             quizBrain.reset();
             scoreKeeper = [];
             Navigator.pushReplacementNamed(context, 'menu_icons_screen');
           },
         ),
           ],
         );
        });
        }
      else {
        if (correctAnswer){
          scoreKeeper.add(Icon(Icons.thumb_up, color: Colors.green, size: 20,));
        } else {
          scoreKeeper.add(Icon(Icons.close, color: Colors.red,size: 20,));
        }
        setState(() {
          displayInfo = false;
          quizBrain.nextQuestion();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 100,),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        (displayInfo) ? Text('${note}') : SizedBox(),
      Container(
        height: 300,
        color: Colors.redAccent,
        child: ListView.builder(itemCount: quizBrain.getPossibleAnswers().length,
        itemBuilder: (context, index){
          return Card(
            color: displayInfo? Colors.blue : Colors.white,
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.adjust),
              title: Text(quizBrain.getPossibleAnswers()[index],),
              onTap: (){
                int questionIndex = quizBrain.questionNumber;
                if(quizBrain.questions[questionIndex].note != ''){
                  if(displayInfo){
                    checkAnswer(index);
                  }else{
                    setState(() {
                      displayInfo = true;
                      note = quizBrain.questions[questionIndex].note;
                    });
                  }
                } else {
                  checkAnswer(index);
                };

              }, //onTap
            ),
          );
        },),
      ),

//       Container(
//         height: 300,
//         child: Row(
//           children:  quizBrain.getPossibleAnswers().map((item){
//             return ListTile(
//               title: Text(item),
//
//             );
//           }).toList(),
//         ),
//       ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }

  }


