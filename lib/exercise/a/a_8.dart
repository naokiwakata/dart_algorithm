import 'package:dart_algorithm/util/input.dart';

void main() {
  final input1 = inputIntList();
  final H = input1[0];
  final W = input1[1];

  List<List<int>> X = List.generate(H, (i) => List.filled(W, 0));

  for (int i = 0; i < H; i++) {
    final input2 = inputIntList();
    for (int j = 0; j < W; j++) {
      X[i][j] = input2[j];
    }
  }

  // 累積和を求める
  List<List<int>> Z = List.generate(H, (i) => List.filled(W, 0));

  // 横方向
  for (int i = 0; i < H; i++) {
    for (int j = 0; j < W; j++) {
      int sum = 0;
      if (j == 0) sum = X[i][j];
      if (j > 0) sum = Z[i][j - 1] + X[i][j];
      Z[i][j] = sum;
    }
  }

  // 縦方向
  for (int j = 0; j < W; j++) {
    for (int i = 0; i < H; i++) {
      int sum = 0;
      if (i == 0) sum = Z[i][j];
      if (i > 0) sum = Z[i][j] + Z[i - 1][j];
      Z[i][j] = sum;
    }
  }

  // 答え
  final Q = inputInt();

  for (int i = 0; i < Q; i++) {
    final input = inputIntList();
    final A = input[0];
    final B = input[1];
    final C = input[2];
    final D = input[3];

    int E = 0; // 左上
    int F = 0; // 右上
    int G = 0; // 左下
    int H = 0; // 右下

    if (A <= 1 || B <= 1)
      E = 0;
    else
      E = Z[A - 2][B - 2];

    if (A <= 1)
      F = 0;
    else
      F = Z[A - 2][D - 1];

    if (B <= 1)
      0;
    else
      G = Z[C - 1][B - 2];

    H = Z[C - 1][D - 1];

    final answer = E + H - F - G;
    print(answer);
  }
}
