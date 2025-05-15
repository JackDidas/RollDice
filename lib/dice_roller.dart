import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-1.jpeg';
  var currentDiceRoll = 1;

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.jpeg';
    });

    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png'),

        const SizedBox(height: 20),

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 23,
            //   ),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
