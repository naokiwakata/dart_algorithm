import 'package:dart_algorithm/util/input.dart';

void main() {
  bool contains = false;
  final input1 = inputIntList();
  final n = input1[0];
  final x = input1[1];

  final aList = inputIntList();

  for (int i = 0; i < n; i++) {
    if (x == aList[i]) {
      contains = true;
    }
  }
  if (contains) {
    print("Yes");
  } else {
    print("No");
  }
}
