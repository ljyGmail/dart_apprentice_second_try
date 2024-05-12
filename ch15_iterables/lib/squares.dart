// ### Implementing the Iterator
class SquaredIterator implements Iterator<int> {
  int _index = 0;

  // 1
  @override
  bool moveNext() {
    _index++;
    return _index <= 100;
  }

  // 2
  @override
  int get current => _index * _index;
}

// ### Implementing the Iterable
class HundredSquares extends Iterable<int> {
  @override
  Iterator<int> get iterator => SquaredIterator();
}
