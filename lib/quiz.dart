import 'package:flutter/material.dart';
import 'package:flutter_quiz_new/quizParts/uitslag.dart';
import 'package:flutter_quiz_new/quizParts/vraag.dart';

import 'bibliotheek.dart' as lib;

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> with AutomaticKeepAliveClientMixin {
  int vraagTeller = 0;
  int score = 0;
  int aantalVragen = lib.vragen.length;

  void initState() {
    lib.startOpnieuw.stream.listen((event) {
      setState(() {
        score = 0;
        vraagTeller = 0;
      });
    });
    super.initState();
  }

  @override
  bool get wantKeepAlive {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (vraagTeller==aantalVragen) {
      return Uitslag(score);
    } else {
      return Vraag(vraagTeller, score, verwerkAntwoord);
    }
  }

  void verwerkAntwoord(bool isCorrect) {
    if (isCorrect) {
      score++;
    }
    setState(() {
      vraagTeller++;
    });
  }
}