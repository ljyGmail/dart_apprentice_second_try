import 'package:ch15_iterables/squares.dart';

void main() {
  whatIsAnIterable();
  print('------------------------------');
  operationsOnIterables();
  print('------------------------------');
  creatingAnIterableFromScratch();
  print('------------------------------');
}

// # What's an Iterable?
void whatIsAnIterable() {
  // ## Reviewing List Iteration
  final myList = ['bread', 'cheese', 'milk'];
  print(myList);

  for (final item in myList) {
    print(item);
  }

  // ## Meeting an Iterable
  final reversedIterable = myList.reversed;
  print(reversedIterable);

  // ## Converting an Iterable to a List
  final reversedList = reversedIterable.toList();
  print(reversedList);
}

// # Operations on Iterables
void operationsOnIterables() {
  // ## Creating an Iterable
  // final myIterable = Iterable(); // Abstract classes can't be instantiated.
  Iterable<String> myIterable = ['red', 'blue', 'green'];
  print(myIterable.runtimeType);

  // ## Accessing Elements
  final thirdElement = myIterable.elementAt(2);
  print(thirdElement);

  // ## Finding the First and Last Elements
  final firstElement = myIterable.first;
  final lastElement = myIterable.last;

  print(firstElement);
  print(lastElement);

  // ## Getting the Length
  final numberElements = myIterable.length;
  print(numberElements);

  // ## Other Important Methods on Iterable
  /*
  map
  where
  expand
  contains
  forEach
  reduce
  fold
  */
}

// # Creating an Iterable From Scratch
void creatingAnIterableFromScratch() {
  // ## Using a Generator
  // ### Runnning the Code
  final squares = hundredSquares();
  for (int square in squares) {
    print(square);
  }

  // ## Using an Iterator
  // ### Implementing the Iterator
  // ### Implementing the Iterable
  // ### Running the Code
  final squares2 = HundredSquares();
  for (int square in squares2) {
    print(square);
  }
}

// ### Creating a Synchronous Generator
Iterable<int> hundredSquares() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i * i;
  }
}

// # When to Use Lists, Sets, Maps or Iterables