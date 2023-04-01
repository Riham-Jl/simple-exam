import 'package:exam/controller/questioncontroller.dart';
import 'package:exam/widgets/answerbutton.dart';
import 'package:exam/widgets/imageview.dart';
import 'package:exam/widgets/questionview.dart';
import 'package:exam/widgets/thumbview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
   QuestionController controller = Get.put(QuestionController() ,permanent: false );

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
      const Expanded(child: Thumbb()),
      const Expanded(flex: 5, child: Imageview()),
      Expanded(child: QuestiontextView()),
      Expanded(child: AnswerBuntton(
        answer:true ,
        color: Colors.blue[800],
        onpressed: (){controller.answeringfunc(true);},) ),
      Expanded(child: AnswerBuntton(
        answer:false ,
        color: Colors.grey[800],
        onpressed:(){ controller.answeringfunc(false);},)),
    ],);
  }
}









