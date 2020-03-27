
class Question{
  Question(
      this.questionText,
      this.questionAnswer);

  String questionText;
  bool questionAnswer;
}

class QuizBrain {

  int _questionNumber = 0;

  List<Question> questions = [
    Question('Coronavírus se passa através do sexo?', false),
    Question('Coronavírus é só uma gripe mal curada?', false),
    Question('Água morna ajuda a matar o coronavírus quando está na garganta?',
        false),
    Question('Não existe vacina para o coronavírus?', true),
    Question('Só idoso morre dessa doença?', false),
    Question(
        'Quem é hipertenso ou diabético pode ter mais complicações com o coronavírus?',
        true),
    Question('O coronavírus não mata.', false),
    Question('Água e sabão ajuda a combater o coronavírus?', true),
    Question(
        'Compartilhar objetos pessoais ( garfo, colher, copos) facilita a transmissão do coronavírus?',
        true),
    Question('Posso usar máscara e luva mesmo não estando doente?', false),
    Question(
        'Só devo ir ao médico em caso de febre persistente ou dificuldade para respirar?',
        true),
    Question(
        'Quem tem asma e bronquite é considerado grupo de risco do coronavírus?',
        true),
    Question('A vacina da gripe H1N1 ajuda a combater o coronavírus?', false),
    Question('Já existe vacina para acabar com com coronavírus?', false),
    Question(
        'O coronavírus é transmitido por gotas de saliva, tosse, espirro e catarro?',
        true),
    Question(
        ' Devo evitar contato pessoal próximo como apertos de mão, abraços e beijos?',
        true),
    Question('Banho muito gelado combate o novo coronavírus?', false),
    Question(
        'Beber muita água e fazer gargarejo com água morna, sal e vinagre previne coronavírus?',
        true),
    Question('Óleo ungido cura o coronavírus?', false),
  ];

  void nextQuestion() {
    if (_questionNumber < questions.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(questions.length);
  }

  String getQuestionText() {
    return questions[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questions[_questionNumber].questionAnswer;
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
