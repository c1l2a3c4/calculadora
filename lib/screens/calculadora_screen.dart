import 'package:flutter/material.dart';
import '../logic/calculator_logic.dart';
import '../widgets/button_row.dart';

class CalculadoraHomePage extends StatefulWidget {
  @override
  _CalculadoraHomePageState createState() => _CalculadoraHomePageState();
}

class _CalculadoraHomePageState extends State<CalculadoraHomePage> {
  String _displayText = '';
  String _expression = '';

  final CalculatorLogic _calculatorLogic = CalculatorLogic();

  void _buttonPressed(String value) {
    setState(() {
      _displayText += value;
      _expression += value;
    });
  }

  void _calculate() {
    final result = _calculatorLogic.calculate(_expression);
    setState(() {
      _displayText = result;
      _expression = result;
    });
  }

  void _clear() {
    setState(() {
      _displayText = '';
      _expression = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title:
            const Text('Calculadora', style: TextStyle(color: Colors.white70)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
                color: Colors.blue,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    Text(
                      _displayText,
                      style: const TextStyle(fontSize: 48, color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 155),
                    ButtonRow(
                        buttons: ['7', '8', '9', '/'],
                        onPressed: _handleButtonPress),
                    ButtonRow(
                        buttons: ['4', '5', '6', 'x'],
                        onPressed: _handleButtonPress),
                    ButtonRow(
                        buttons: ['1', '2', '3', '-'],
                        onPressed: _handleButtonPress),
                    ButtonRow(
                        buttons: ['C', '0', '=', '+'],
                        onPressed: _handleButtonPress),
                    SizedBox(height: 20),
                    Text(
                      'Desenvolvido por Clara Carvalho',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void _handleButtonPress(String button) {
    if (button == 'C') {
      _clear();
    } else if (button == '=') {
      _calculate();
    } else if (button == 'x') {
      _buttonPressed('*');
    } else {
      _buttonPressed(button);
    }
  }
}
