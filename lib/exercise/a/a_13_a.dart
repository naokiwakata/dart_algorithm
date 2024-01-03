import 'package:dart_algorithm/util/input.dart';

void main() {
  final NK = inputIntList();
  final N = NK[0];
  final K = NK[1];

  final A = inputIntList();

  int answer = 0;
  for (int i = 0; i < N; i++) {
    // 二分探索
    int left = i + 1;
    int right = N;

    while (left < right) {
      final middle = (left + right) ~/ 2;
      if (A[middle] - A[i] > K)
        right = middle;
      else
        left = middle + 1;
    }
    final underK = left - i - 1;
    answer = answer + underK;
  }
  print(answer);
}
