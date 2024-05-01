void main() {
  whileLoops();
  print('------------------------------');
  forLoops();
}

// # While Loops
void whileLoops() {
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

// ## Do-While Loops
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

// ## Comparing While and Do-While Loops
  sum = (1 + 3 - 2 * 4 + 8);
  while (sum < 10) {
    sum += (1 + 3 - 2 * 4 + 8);
  }
  print('while loop sum: $sum');

  sum = 0;
  do {
    sum += (1 + 3 - 2 * 4 + 8);
  } while (sum < 10);
  print('do-while loop sum: $sum');

// ## Breaking Out of a Loop
  sum = 1;
  while (true) {
    sum += 4;
    print(sum);
    if (sum > 10) {
      break;
    }
  }
}

// # For Loops
void forLoops() {
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  print('@@@@@@@@@@@');

  // ## The Continue Keyword
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  // ## More For Loops
  // for-in loops
  // for-each loops
}
