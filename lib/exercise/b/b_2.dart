import 'package:dart_algorithm/util/input.dart';

void main() {
  final input = inputIntList();

  final A = input[0];
  final B = input[1];

  bool hasDivisor = false;

  for (int i = A; i <= B; i++) {
    if (100 % i == 0) {
      hasDivisor = true;
    }
  }

  if (hasDivisor) {
    print("Yes");
  } else {
    print("No");
  }
}
