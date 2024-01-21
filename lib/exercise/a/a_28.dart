import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();

  int X = 0;
  for (int i = 0; i < N; i++) {
    final input = inputString().split(" ");
    final T = input[0];
    final A = int.parse(input[1]);
    if (T == "+") X = X + A;
    if (T == "-") X = X - A;
    if (T == "*") X = X * A;

    if (X < 0) X = X + 10000;
    X %= 10000;
    print(X);
  }
}
