extension ListUtils<T> on List<T> {
  List<T> groupByParts(int dividableGroup, T divider) {
    final updatedList = <T>[];
    for (int i = 0; i < length; i++) {
      updatedList.add(this[i]);

      final index = i + 1;

      if (index % dividableGroup == 0 && index != length) {
        updatedList.add(divider);
      }
    }
    return updatedList;
  }
}
