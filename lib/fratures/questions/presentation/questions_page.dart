import 'package:flutter/material.dart';
import 'package:kook/fratures/questions/presentation/widgets/question_body.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuestionBody(),
    );
  }
}
