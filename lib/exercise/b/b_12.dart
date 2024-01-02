import 'package:dart_algorithm/util/input.dart';

void main() {
  final N = inputInt();

  double Left = 0;
  double Right = 100;

  double x = 0;
  while (Left < Right) {
    x = (Left + Right) / 2;

    double y = x * x * x + x;

    if ((y - N).abs() < 0.001) {
      print(x);
      break;
    }
    if (y > N) Right = x;
    if (y <= N) Left = x;
  }
}
