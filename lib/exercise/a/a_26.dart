import 'package:dart_algorithm/util/input.dart';

void main() {
  final Q = inputInt();
  for (int i = 0; i < Q; i++) {
    final x = inputInt();
    if (isPrime(x)) {
      print("Yes");
    } else {
      print("No");
    }
  }
}

// 素数の判定は
// Xまでチェックするのではなく
// ルートXまでチェックすれば良い
bool isPrime(int x) {
  for (int i = 2; i * i <= x; i++) {
    if (x % i == 0) return false;
  }
  return true;
}
