
class Question{
  Question({
    this.questionText,
    this.questionAnswer,
    this.possibleAnswers,
    this.note = '',
  });

  String questionText;
  int questionAnswer;
  List<String> possibleAnswers;
  String note;
}

class QuizBrain {

  int _questionNumber = 0;

  List<Question> questions = [
    Question(questionText: 'O coronavirus transmite-se pelo ar. Pode transmitir atraves de objetos?', questionAnswer: 1, possibleAnswers: ['Nunca', 'Sim, mas blablabla', 'Transmite-se com a mesma intensidade'], note: 'Nota: No entanto, ...'),
    Question(questionText: 'O coronavirus transmite-se pelo ar. Pode transmitir atraves de objetos?', questionAnswer: 1, possibleAnswers: ['Nunca', 'Sim, mas blablabla', 'Transmite-se com a mesma intensidade'])

  ];

  void nextQuestion() {
    if (_questionNumber < questions.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(questions.length);
  }


//  Expanded(
//  child: Padding(
//  padding: EdgeInsets.all(15),
//  child: FlatButton(
//  textColor: Colors.white,
//  color: Colors.green,
//  child: Text('FATO', style: TextStyle(color: Colors.white, fontSize: 20.0),),
//  onPressed: (){
//  checkAnswer(0);
//  },
//  ),
//  ),
//  ),
//
  String getQuestionText() {
    return questions[_questionNumber].questionText;
  }

  List<String> getPossibleAnswers() {
    return questions[_questionNumber].possibleAnswers;
  }

  bool getCorrectAnswer(answer) {
    return questions[_questionNumber].questionAnswer == answer;
  }

  bool isFinished() {
    if (_questionNumber >= questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {_questionNumber = 0;
  }

}
