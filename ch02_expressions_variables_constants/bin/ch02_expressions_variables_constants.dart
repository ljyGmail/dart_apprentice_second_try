import 'dart:math';

void main(List<String> arguments) {
  // # Commenting Code
  // This is a comment. It is not executed.

  // This is also a comment,
  // over multiple lines.

  /*
  This is also a comment, Over many...
  many...
  many lines. */

  /* This is a comment.
  /* And inside it is
  another comment. */
  Back to the first. */

  /// I am a documentation comment
  /// at your service.

  /**
   * Me, too!
   */

  // ## Printing Output
  print('Hello, Dat Apprentice reader!');

  // # Statements and Expressions

  // ## Statements
  // print('Hello, Dat Apprentice reader!');
  /*
  if(someCondition){
    // code block
  }
  */

  // ## Expressions
  42;
  3 + 2;

  'Hello, Dart Application reader!';
  int x = 1;
  x;

  // # Arithmetic Operations
  // ## Simple Operations
  print(2 + 6);
  print(10 - 2);
  print(2 * 4);
  print(24 / 3);

  // ## Decimal Numbers
  print(22 / 7);
  print(22 ~/ 7); // integer division: truncating division operator

  // ## The Euclidean Modulo Operation
  print(28 % 10);

  // ## Order of Operations
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print(350 / 5 + 2);
  print(350 / (5 + 2));

  // ## Math Functions
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(sqrt(2));
  print(max(5, 10));
  print(min(-5, -10));
  print(max(sqrt(2), pi / 2));
}
