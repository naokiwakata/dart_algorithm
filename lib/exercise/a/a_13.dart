import '../../util/input.dart';

void main() {
  final NK = inputIntList();
  final N = NK[0];
  final K = NK[1];

  final A = inputIntList();
  final R = List.generate(N, (index) => 0);

  for (int i = 0; i < N - 1; i++) {
    if (i == 0)
      R[i] == 1;
    else
      R[i] = R[i - 1];

    while (R[i] < N && A[R[i]] - A[i] <= K) {
      R[i]++;
    }
  }

  int answer = 0;
  for (int i = 0; i < N; i++) {
    answer = answer + R[i] - i;
  }
  print(answer);
}
