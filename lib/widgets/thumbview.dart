import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/questioncontroller.dart';



class Thumbb extends StatelessWidget {
   const Thumbb({super.key});

  

  @override
  Widget build(BuildContext context) {
    return 
    GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) =>
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7 , crossAxisSpacing: 1 , mainAxisSpacing: 1),
          itemCount: controller.thmbs.length,
          //scrollDirection: Axis.vertical,
          itemBuilder: (context,i){
          return  controller.thmbs[i]  ;
        }));
  }
}