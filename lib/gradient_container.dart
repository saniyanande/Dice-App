import 'package:flutter/material.dart';

const startAllignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer (this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
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
            child: Image.asset('assets/images/dice-2.png'),
          ),
        );
  }
}
