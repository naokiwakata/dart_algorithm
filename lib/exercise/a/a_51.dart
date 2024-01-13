import 'package:dart_algorithm/util/input.dart';

void main() {
  final Q = inputInt();
  List<String> stack = List.filled(0, "", growable: true);

  for (int i = 0; i < Q; i++) {
    final query = inputString().split(" ");
    if (query[0] == "1") stack.add(query[1]);
    if (query[0] == "2") print(stack.last);
    if (query[0] == "3") stack.removeLast();
  }
}
