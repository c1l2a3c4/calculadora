import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<String> buttons;
  final Function(String) onPressed;

  ButtonRow({required this.buttons, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((button) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => onPressed(button),
              child: Text(button, style: TextStyle(fontSize: 24)),
            ),
          ),
        );
      }).toList(),
    );
  }
}
