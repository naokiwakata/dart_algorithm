import 'package:dart_algorithm/util/input.dart';

void main() {
  final NX = inputIntList();
  final X = NX[1];

  final A = inputIntList();

  int answer = search(X, A) + 1;
  print(answer);
}

// 二分探索
int search(int X, List<int> A) {
  int L = 0;
  int R = A.length;

  while (L <= R) {
    final M = (L + R) ~/ 2;
    if (X < A[M]) R = M - 1;
    if (X == A[M]) return M;
    if (A[M] < X) L = M + 1;
  }
  return -1;
}
