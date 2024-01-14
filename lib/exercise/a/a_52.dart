import '../../util/input.dart';

void main() {
  final Q = inputInt();
  List<String> queue = List.filled(0, "", growable: true);

  for (int i = 0; i < Q; i++) {
    final query = inputString().split(" ");
    if (query[0] == "1") queue.add(query[1]);
    if (query[0] == "2") print(queue.first);
    if (query[0] == "3") queue.removeAt(0);
  }
}
