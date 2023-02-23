class GameError implements Exception {
  @override
  String toString() {
    return 'Game rules were violated!';
  }
}
