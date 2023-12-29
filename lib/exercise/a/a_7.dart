
import 'package:dart_algorithm/util/input.dart';

void main() {
  final days = inputInt();
  final numberOfPeople = inputInt();

  final zenjitsuHi = List.generate(days, (index) => 0,growable: true);
  for(int i = 0; i < numberOfPeople; i++ ) {
    final person = inputIntList();
    print(person);
    final L = person[0];
    final R = person[1];

    zenjitsuHi[L-1]++;
    zenjitsuHi[R]--;
  } 
  print(zenjitsuHi);

  int answer = 0;
  for(int i = 0; i < days; i++) {
    answer = answer + zenjitsuHi[i];
    print(answer);
  }
}