import 'package:flutter/material.dart';
import 'package:exam/exampage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exam"),
        centerTitle: true,
      ),
      body: const Padding(
      padding: EdgeInsets.all(10),
      child: ExamPage() ,),
    );
  }
}

