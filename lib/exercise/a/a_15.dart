import '../../util/input.dart';

void main() {
  final N = inputInt();
  List<int> A = inputIntList();
  List<int> T = [...A];
  final B = List.generate(N, (index) => 0);

  T.sort();

  // 重複を取り除く
  T = T.toSet().toList();

  for (int i = 0; i < N; i++) {
    B[i] = lowerBound(T, A[i]) + 1;
  }

  final answer = B.join(" ");
  print(answer);
}

// 二分探索
int lowerBound(List<int> list, int value) {
  int min = 0;
  int max = list.length;

  while (min < max) {
    int mid = min + ((max - min) >> 1);

    if (list[mid] < value) {
      min = mid + 1;
    } else {
      max = mid;
    }
  }

  return min;
}
