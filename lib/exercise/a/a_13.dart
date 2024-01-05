import '../../util/input.dart';

void main() {
  final NK = inputIntList();
  final N = NK[0];
  final K = NK[1];

  final A = inputIntList();
  List<int> R = List.filled(N, 0);

  for (int i = 0; i < N - 1; i++) {
    if (i == 0)
      R[i] = 0;
    else
      R[i] = R[i - 1];

    while (R[i] < N - 1 && A[R[i] + 1] - A[i] <= K) {
      R[i]++;
    }
  }

  int answer = 0;
  for (int i = 0; i < N - 1; i++) {
    answer = answer + R[i] - i;
  }
  print(answer);
}
