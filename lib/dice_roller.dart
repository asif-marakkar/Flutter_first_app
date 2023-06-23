import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 6;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText(
          'It is a game'.toUpperCase(),
        ),
        const SizedBox(
          height: 10,
        ),
        Image(
          image: AssetImage('assets/images/dice-$currentDice.png'),
          width: 100,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
