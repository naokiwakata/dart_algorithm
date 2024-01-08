import 'dart:math';

import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();
  final A = inputIntList();
  final B = inputIntList();

  final dp = List.filled(N, 0);

  dp[0] = 0;
  dp[1] = A[0];

  // 動的計画法
  for (int i = 2; i < N; i++) {
    dp[i] = min(dp[i - 1] + A[i - 1], dp[i - 2] + B[i - 2]);
  }
  print(dp[N - 1]);
}
