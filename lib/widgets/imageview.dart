import 'package:exam/controller/questioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Imageview extends GetView<QuestionController> {
   const Imageview({super.key});



  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
             controller: controller.pc,
              itemCount: controller.questiongroup.length,
              itemBuilder: (context , i){
                return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) =>
                 Image.asset("images/${controller.questiongroup[i].image}" , fit: BoxFit.fill));
              },
            );
  }
}