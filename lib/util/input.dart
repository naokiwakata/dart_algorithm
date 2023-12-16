import 'dart:io';

String inputString() => stdin.readLineSync() ?? "";

int inputInt() => int.parse(inputString());

// 5,10
List<int> inputIntList() =>
    inputString().split(" ").map((e) => int.parse(e)).toList();

// 5
// 10
List<int> inputIntListWithLine(int n) =>
    List.generate(n, (_) => int.parse(inputString()));

// 5 10
// 10 20
List<List<int>> inputMultipleIntListWithLine(int n) => List.generate(
    n, (_) => inputString().split(' ').map((x) => int.parse(x)).toList());
