import 'package:dart_algorithm/util/input.dart';

void main() {
  List<List<int>> matrix = List.generate(1500, (i) => List.filled(1500, 0));

  final N = inputInt();
  for (int i = 0; i < N; i++) {
    final XY = inputIntList();
    final X = XY[0];
    final Y = XY[1];

    matrix[Y - 1][X - 1]++;
  }

  final H = matrix.length;
  final W = matrix[0].length;

  // 累積和を求める
  List<List<int>> Z = List.generate(H, (i) => List.filled(W, 0));

  // 横方向
  for (int i = 0; i < H; i++) {
    for (int j = 0; j < W; j++) {
      int sum = 0;
      if (j == 0) sum = matrix[i][j];
      if (j > 0) sum = Z[i][j - 1] + matrix[i][j];
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

  // 答えを求める
  final Q = inputInt();
  for (int i = 0; i < Q; i++) {
    final input = inputIntList();
    final a = input[0];
    final b = input[1];
    final c = input[2];
    final d = input[3];

    int e = 0; // 左上
    int f = 0; // 右上
    int g = 0; // 左下
    int h = 0; // 右下

    if (a == 1 || b == 1)
      e = 0;
    else
      e = Z[b - 2][a - 2];
    if (a == 1)
      f = 0;
    else
      f = Z[d - 1][a - 2];
    if (b == 1)
      g = 0;
    else
      g = Z[b - 2][c - 1];
    h = Z[d - 1][c - 1];

    final answer = e + h - f - g;

    print(answer);
  }
}
