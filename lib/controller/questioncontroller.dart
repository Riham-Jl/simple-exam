import 'package:exam/models/questionclass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {

  PageController pc= PageController(
      initialPage: 0,
        );


  int questionnumber=0;
  int trueanswers = 0;

  List<Widget> thmbs = [];


  List<Question> questiongroup = [
    Question(question: "Sharks are mammals", image: "1.jpg", answer: false),
    Question(question: "Bats are blind", image: "2.jpg", answer: false),
    Question(question: "The human body is about 60% water", image: "3.jpg", answer: true),
    Question(question: "The human body has four lungs", image: "4.png", answer: false),
    Question(question: "The most common blood type is 0- negative.", image: "5.jpg", answer: true),
    Question(question: "The heart is the largest internal organ in the body", image: "6.jpg", answer: false),

  ] ;

    String questiontext (){
    return questiongroup[questionnumber].question;
  }


   bool questionanswer (){
    return questiongroup[questionnumber].answer;
  }

   void  nextquestion(){
          if (questionnumber<questiongroup.length-1){
    questionnumber++;}
    update();
  }

 void reset(){
    questionnumber=0;
    trueanswers=0;
    update();
  }

  bool isfinished(){
    if (questionnumber>=questiongroup.length-1){
      return true;
    }
    else {return false; }
  }

  void addingtrueanswer(){
    trueanswers++;
    update();
  }



addtruethumb(){
      thmbs.add(const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.thumb_up, color: Colors.green,),
      ));
      update();
    }

    addfalsethumb(){
      thmbs.add(const Padding(
        padding: EdgeInsets.only(top: 10.0 , bottom: 8 , left: 8 , right: 8),
        child: Icon(Icons.thumb_down, color: Colors.red,),
      ));
      update();
    }

    resetthumb(){
      thmbs=[];
      update();
    }

    answeringfunc(ans) async{
           if (questionanswer()==ans){
        addtruethumb();
        addingtrueanswer();
      }
      else {
        addfalsethumb();
      }
    

      if (isfinished()==false){
             nextquestion(); 
             pc.animateToPage(questionnumber, duration: const Duration(milliseconds: 400) , curve: Curves.easeIn); }
             else {
              int finaltrue=trueanswers;
              Get.defaultDialog(
                title: "Exam finished",
                middleText: "you answered $finaltrue true answers",
                actions: [
                ElevatedButton(child: const Text ("Reexam") , onPressed: (){Get.back();
                reset();
              resetthumb();
              pc.jumpToPage(0);
                },),
              ]   );
              
          await Future.delayed(const Duration(seconds: 1) , (){
              reset();
              resetthumb();
              pc.jumpToPage(0);
    });
              
             } 

}
}