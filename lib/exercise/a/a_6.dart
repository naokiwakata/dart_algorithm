
import '../../util/input.dart';

void main() {
  final input = inputIntList();
  final Q = input[1];

  final AList = inputIntList();

  List<int> ruisekiWa = [0];
  int S = 0;
  for(final a in AList) {
    S = S + a;
    ruisekiWa.add(S);
  }

  for(int i = 0; i<Q; i++) {
    final range  = inputIntList();
    final L = range[0];
    final R = range[1];

    final answer = ruisekiWa[R-1] - ruisekiWa[L-2];
    print(answer);
  }
}