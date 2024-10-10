import 'package:expressions/expressions.dart';

class CalculatorLogic {
  String calculate(String expression) {
    try {
      final exp = Expression.parse(expression);
      final evaluator = const ExpressionEvaluator();
      final result = evaluator.eval(exp, {});
      return result.toString();
    } catch (e) {
      return 'Erro';
    }
  }
}
