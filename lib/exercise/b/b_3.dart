import 'dart:io';

String inputString() => stdin.readLineSync() ?? "";

int inputInt() => int.parse(inputString());

// 5,10
List<int> inputIntList() =>
    inputString().split(" ").map((e) => int.parse(e)).toList();

void main() {
  final N = inputInt();

  final aList = inputIntList();

  bool answer = false;
  for (int i = 0; i < N; i++) {
    for (int l = 0; l < N; l++) {
      for (int k = 0; k < N; k++) {
        final a1 = aList[i];
        final a2 = aList[l];
        final a3 = aList[k];

        if (i == l || l == k || k == i) {
          continue;
        }

        if (a1 + a2 + a3 == 1000) {
          answer = true;
        }
      }
    }
  }

  if (answer) {
    print("Yes");
  } else {
    print("No");
  }
}
