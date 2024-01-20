import 'dart:math';

import 'package:dart_algorithm/util/input.dart';

void main() {
  final input = inputIntList();
  int A = input[0];
  int B = input[1];

  print(GCD(A, B));
}

// ユークリッドの互除法
int GCD(int A, int B) {
  while (A >= 1 && B >= 1) {
    if (A >= B) {
      A = A % B;
    } else {
      B = B % A;
    }
  }

  return max(A, B);
}
