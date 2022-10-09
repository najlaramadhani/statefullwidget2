import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dicee Roll"),
          backgroundColor: Colors.red,
        ),
        body: const DiceGame(),
      ),
    ),
  );
}

// // ignore: camel_case_types
// class dice extends StatelessWidget {
//   const dice({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset("assets/dice1.png"),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset("assets/dice2.png"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ignore: camel_case_types
class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiceGameState createState() => _DiceGameState();
}

// ignore: camel_case_types
class _DiceGameState extends State<DiceGame> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}