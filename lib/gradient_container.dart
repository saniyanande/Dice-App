import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const startAllignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer (this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-4.png';

  void rollDice(){
    activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient:LinearGradient(
              colors:[color1, color2],
              begin: startAllignment,
              end: endAlignment,    
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children:[
               Image.asset(
              activeDiceImage,
              width: 200,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice ,
                style: TextButton.styleFrom(
                // padding:const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle:const TextStyle(
                  fontSize: 28,
                  ),
                  ),
                child: const Text('Roll Dice'),
                )
            ],
            ),
          ),
        );
  }
}
