import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('A golf ball is the fastest recorded object in sports.', false),
    Question(
        'Paul Gascoigne has won the BBC Sports Personality of the Year Award.',
        true),
    Question(
        'In the Summer Olympics, Michael Phelps has won more gold medals than the country Greece.',
        false),
    Question('Sue Barker has won a tennis Grand Slam tournament.', true),
    Question(
        'Cheetahs were raced at Romford Greyhound Stadium in 1937 in an effort to increase attendances.',
        true),
    Question('The Indy 500 automobile race is actually raced over 300 miles.',
        false),
    Question('Steve Cram won an Olympic gold medal.', false),
    Question('North Korea beat Italy in the finals of the 1966 FIFA World Cup.',
        true),
    Question(
        'Basketball player Michael jordan was 6 feet 1 inches tall.', false),
    Question(
        'Rugby coach Eddie Jones played in the position of scrum-half during his playing years.',
        true),
    Question('Mike Tyssen bit Evander Holyfield on both ears.', true),
    Question(
        'Gary Lineker never got a yellow card in his entire senior career.',
        true),
    Question(
        'During a recognised tournament, Ronnie O\'Sullivan compiled a maximum 147 break at the age of 15.',
        true),
    Question(
        'Golf\'s Walker Cup is named after the great-grandfather of President George W. Bush.',
        true),
    Question('Leicester won the Premier League in the 2016-17 season.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
