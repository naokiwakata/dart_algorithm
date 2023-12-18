import 'dart:math';

import '../../util/input.dart';

void main() {
  final N = inputInt();

  List<String> answers = List.empty(growable: true);

  for (int i = 9; i >= 0; i--) {
    final a = pow(2, i);
    final b = (N ~/ a);
    final c = b % 2;

    answers.add(c.toString());
  }

  String answer = "";
  for (final a in answers) {
    answer = answer + a;
  }
  print(answer);
}
