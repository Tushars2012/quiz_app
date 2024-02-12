import "package:flutter/material.dart";

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "questions": "Q1.Who is the founder of Apple?",
      "answers": [
        "Steve Jobs",
        "Jeff Bexos",
        "Bill Gates",
        "Elon Musk",
        "Larry paige"
      ],
      "answerIndex": 0
    },
    {
      "questions": "Q2.Who is the founder of Microsoft? ",
      "answers": [
        "Steve Jobs",
        "Jeff Bexos",
        "Bill Gates",
        "Elon Musk",
        "Larry paige"
      ],
      "answerIndex": 2
    },
    {
      "questions": "Q3.Who is the founder of Tesla?",
      "answers": [
        "Steve Jobs",
        "Jeff Bexos",
        "Bill Gates",
        "Elon Musk",
        "Larry paige"
      ],
      "answerIndex": 3
    },
    {
      "questions": "Q4.Who is the founder of Amazon?",
      "answers": [
        "Steve Jobs",
        "Jeff Bexos",
        "Bill Gates",
        "Elon Musk",
        "Larry paige"
      ],
      "answerIndex": 1
    },
    {
      "questions": "Q5.Who is the founder of Google",
      "answers": [
        "Steve Jobs",
        "Jeff Bexos",
        "Bill Gates",
        "Elon Musk",
        "Larry paige"
      ],
      "answerIndex": 4
    },
  ];

  bool questionscreen = true;
  int questionIndex = 0;
  

  Scaffold isQuestionScreen() {
    if ((questionscreen == true) && (questionIndex < 5)) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz_app",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style:  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                "${allQuestions[questionIndex]["questions"]}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "A.${allQuestions[questionIndex]["answers"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "B.${allQuestions[questionIndex]["answers"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "C.${allQuestions[questionIndex]["answers"][2]}",
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "D.${allQuestions[questionIndex]["answers"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "E.${allQuestions[questionIndex]["answers"][4]}",
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
            questionIndex++;
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Quiz_App",style: TextStyle(fontSize: 30,color: Colors.orange),),
          centerTitle: true,
        ),
        body:const Center(
          child: Text("You have completed the test!",style: TextStyle(fontSize: 30),),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
