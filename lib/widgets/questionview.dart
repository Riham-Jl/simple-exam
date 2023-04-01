import 'package:exam/controller/questioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestiontextView extends StatelessWidget {
   QuestiontextView({super.key});

        final QuestionController controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) =>
        Text(controller.questiontext() ,
         textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),)),
      );
  }
}