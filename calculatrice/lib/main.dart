import 'dart:math';

import 'package:calculatrice/boutons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userquestion = "";
  var userAnswer = "";

  final txtStl = TextStyle(fontSize: 30, color: Colors.white);

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      //La je divise mon ecran en deux pour que a savoir la partie ou rentrer
      //les données et la partie outpout de la claculatrice
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userquestion,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,mainAxisExtent: 96.5),
                  itemBuilder: (BuildContext context, int index) {
                    //index represente le numero du grid

                    if (index == 0) {
                      return Boutons(
                        tapbtn: (){
                          setState(() {
                             userquestion='';
                             userAnswer='';
                          });                       
                        },
                        txtbtn: buttons[index],
                        couleur: Colors.white70,
                        txtcoul: Colors.black,
                      );

                    } else if (index == 1) {
                      return Boutons(
                        tapbtn: (){
                          setState(() {
                            userquestion = userquestion.substring(0, userquestion.length-1);
                          });
                        },
                        txtbtn: buttons[index],
                        couleur: Colors.white70,
                        txtcoul: Colors.black,
                      );
                    } else if (index == buttons.length-1) {
                      return Boutons(
                        tapbtn: (){
                          setState(() {
                            equalPressed();
                          });
                        },
                        txtbtn: buttons[index],
                        couleur: Colors.green,
                        txtcoul: Colors.black,
                      );
                    } else {
                      return Boutons(
                        tapbtn: () {
                          setState(() {
                            userquestion += buttons[index];
                          });
                        },
                        txtbtn: buttons[index],
                        couleur: Operateur(buttons[index])
                            ? Colors.green
                            : Colors.white10,
                        txtcoul: Operateur(buttons[index])
                            ? Colors.black
                            : Colors.white,
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }

  bool Operateur(String x) {
    if (x == '%' || x == '/' || x == '+' || x == '-' || x == 'x' || x == '=') {
      return true;
    }
    return false;
  }

  equalPressed(){
    String finalQuestion = userquestion;
    finalQuestion = finalQuestion.replaceAll('x', '*');


    Parser p = Parser();
    Expression expression = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }

}
