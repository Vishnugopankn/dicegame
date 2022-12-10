import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice_game());
}
class Dice_game extends StatefulWidget {
  const Dice_game({Key? key}) : super(key: key);

  @override
  State<Dice_game> createState() => _Dice_gameState();
}

class _Dice_gameState extends State<Dice_game> {
  int leftdice=1;
  int rightdice=1;
  void Dice(){
    rightdice=Random().nextInt(6)+1;
    leftdice=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(backgroundColor: Colors.orangeAccent,
          title: Text("TOSS UP GAME!!"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed:(){
                        setState(() {
                          Dice();
                        });
                      },
                      child: Container(
                           width:300,height:300,
                        decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage("images/d$leftdice.jpg"),
                           fit:BoxFit.cover,
                         ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 100,),

                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(onPressed: (){
                      setState(() {
                       Dice();
                      });
                    },

                      child: Container(
                        width:300,height:300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/d$rightdice.jpg"),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),



      ),
      
    );
  }
}

