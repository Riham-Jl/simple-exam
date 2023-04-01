import 'package:exam/controller/questioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class AnswerBuntton extends StatelessWidget {
    final bool answer;
    final Color? color;
    final void Function()? onpressed;

   AnswerBuntton({super.key , required this.answer, this.onpressed, this.color});
          final QuestionController controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: onpressed,
          child:Text("$answer" , style: const TextStyle(fontSize: 17),) ,
      ));
  }
}