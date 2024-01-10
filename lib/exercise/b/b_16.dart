import 'dart:math';

import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();
  final A = inputIntList();

  final dp = List.filled(N, 0);

  dp[0] = 0;
  dp[1] = (A[0] - A[1]).abs();

  for (int i = 2; i < N; i++) {
    final h1 = (A[i] - A[i - 1]).abs() + dp[i - 1];
    final h2 = (A[i] - A[i - 2]).abs() + dp[i - 2];
    dp[i] = min(h1, h2);
  }

  print(dp);

  print(dp[N - 1]);
}
