import 'package:dart_algorithm/util/input.dart';

void main() {
  final input = inputIntList();

  final N = input[0];
  final K = input[1];

  int answer = 0;
  for (int i = 1; i <= N; i++) {
    for (int l = 1; l <= N; l++) {
      final white = K - i - l;

      if (white >= 1 || white <= N) answer++;
    }
  }

  print(answer);
}
