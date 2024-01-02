import 'package:dart_algorithm/util/input.dart';

void main() {
  final NK = inputIntList();
  final N = NK[0]; // N台のプリンター
  final K = NK[1]; // K枚目のチラシ

  final A = inputIntList(); // A[i]秒ごとにチラシが印刷される

  int L = 0;
  int R = 100000000;

  while (L < R) {
    final Msecond = (L + R) ~/ 2;

    int sum = 0;
    // Msの時の印刷数を求める
    for (int i = 0; i < N; i++) {
      sum = sum + Msecond ~/ A[i];
    }
    if (sum >= K) R = Msecond;
    if (sum < K) L = Msecond + 1;
  }

  // 最終的にLeft = Right
  print(L);
}
