import 'dart:math';

import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();
  final A = inputIntList();

  final P = List.generate(N, (index) => 0);
  final Q = List.generate(N, (index) => 0);

  // 左 -> 右 で最大値のリストを作成する
  P[0] = A[0];
  for (int i = 1; i < N; i++) {
    P[i] = max(P[i - 1], A[i]);
  }

  // 右 -> 左 で最大値のリストを作成する
  Q[N - 1] = A[N - 1];
  for (int i = N - 2; i >= 0; i--) {
    Q[i] = max(Q[i + 1], A[i]);
  }

  final D = inputInt();
  for (int i = 0; i < D; i++) {
    final LR = inputIntList();
    final L = LR[0];
    final R = LR[1];

    final answer = max(P[L - 2], Q[R]);
    print(answer);
  }
}
