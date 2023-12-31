import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();

  List<List<int>> X = List.generate(1501, (i) => List.filled(1501, 0));
  List<List<int>> Z = List.generate(1501, (i) => List.filled(1501, 0));

  for (int i = 0; i < N; i++) {
    final input = inputIntList();
    final A = input[0];
    final B = input[1];
    final C = input[2];
    final D = input[3];

    X[A][B]++; // 左下
    X[C][B]--; // 右下
    X[A][D]--; // 左上
    X[C][D]++; // 右上
  }

  // 累積和を作成
  for (int i = 0; i <= 1500; i++) {
    for (int j = 1; j <= 1500; j++) {
      Z[i][j] = Z[i][j - 1] + X[i][j];
    }
  }

  for (int j = 0; j <= 1500; j++) {
    for (int i = 1; i <= 1500; i++) {
      Z[i][j] = Z[i][j] + Z[i - 1][j];
    }
  }

  int answer = 0;
  for (int i = 1; i <= 1500; i++) {
    for (int j = 1; j <= 1500; j++) {
      if (Z[i][j] >= 1) answer++;
    }
  }
  print(answer);
}
