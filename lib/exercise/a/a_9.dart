import 'dart:io';

import 'package:dart_algorithm/util/input.dart';

void main() {
  final input = inputIntList();
  final H = input[0];
  final W = input[1];
  final N = input[2];

  // 元の二次元配列
  List<List<int>> X = List.generate(H + 2, (i) => List.filled(W + 2, 0));
  // 累積和を求める
  List<List<int>> Z = List.generate(H + 2, (i) => List.filled(W + 2, 0));

  for (int i = 0; i < N; i++) {
    final input = inputIntList();
    final A = input[0];
    final B = input[1];
    final C = input[2];
    final D = input[3];

    X[A][B]++; //　左上
    X[A][D + 1]--; // 左下
    X[C + 1][B]--; // 右上
    X[C + 1][D + 1]++; // 右下
  }

  for (int i = 1; i <= H; i++) {
    for (int j = 1; j <= W; j++) {
      Z[i][j] = Z[i][j - 1] + X[i][j];
    }
  }

  for (int j = 1; j <= W; j++) {
    for (int i = 1; i <= H; i++) {
      Z[i][j] = Z[i][j] + Z[i - 1][j];
    }
  }

  // 出力
  for (int i = 1; i <= H; i++) {
    for (int j = 1; j <= W; j++) {
      if (j >= 2) stdout.write(" ");
      stdout.write(Z[i][j]);
    }
    print(""); // 改行
  }
}
