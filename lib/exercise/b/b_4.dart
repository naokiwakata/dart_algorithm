import 'dart:math';

import '../../util/input.dart';

void main() {
  final N = inputString();

  int answer = 0;
  for (int i = N.length; i > 0; i--) {
    final a = int.parse(N[i - 1]);

    final b = a * pow(2, N.length - i).toInt();

    answer = answer + b;
  }

  print(answer);
}
