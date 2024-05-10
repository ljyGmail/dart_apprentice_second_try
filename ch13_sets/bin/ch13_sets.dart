import 'dart:math';

void main() {
  creatingASet();
  print('------------------------------');
  operationsOnASet();
  print('------------------------------');
  setRelationships();
  print('------------------------------');
  findingDuplicates();
}

// # Creating a Set
void creatingASet() {
  final Set<int> someSet = {};
  print(someSet.runtimeType);
  final someSet2 = <int>{};
  print(someSet2.runtimeType);

  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);
}

// # Operations on a Set
void operationsOnASet() {
  // ## Checking the Contents
  final desserts = {'cake', 'pie', 'donut'};
  print(desserts.contains('cake')); // => true
  print(desserts.contains('cookies')); // => false

  // ## Adding Single Elements
  final drinks = <String>{};
  drinks.add('cola');
  drinks.add('water');
  drinks.add('cola');
  print(drinks);

  // ## Removing Elements
  drinks.remove('water');
  print(drinks);

  // ## Adding Multiple Elements
  drinks.addAll(['juice', 'coffee', 'milk']);
  print(drinks);

  // ## Looping Over the Elements
  for (final drink in drinks) {
    print("I'm drinking $drink.");
  }

  // ## Copying Sets
  final beverages = drinks;
  print(drinks);

  beverages.remove('milk');
  print(drinks);
  print(beverages);

  final liquids = drinks.toSet();
  print(drinks);

  liquids.remove('coffee');
  print(drinks);
  print(liquids);

  // ## Other Operations
  // collection if
  // collection for
  // spread operators
}

// # Set Relationships
void setRelationships() {
  // ## Intersections
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  print(intersection);

  // ## Unions
  final union = setA.union(setB);
  print(union);

  // ## Difference
  final differenceA = setA.difference(setB);
  print(differenceA);

  final differenceB = setB.difference(setA);
  print(differenceB);
}

// # Finding Duplicates
void findingDuplicates() {
  // ## Random Number Generation
  // 1
  final randomGenerator = Random();
  final randomIntList = <int>[];

  for (int i = 0; i < 10; i++) {
    // 2
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomIntList.add(randomInt);
  }

  print(randomIntList);

  // ## Finding Duplicate Integers in the List
  final uniqueValues = <int>{};
  final duplicates = <int>{};
  for (int number in randomIntList) {
    // 2
    if (uniqueValues.contains(number)) {
      duplicates.add(number);
    }
    // 3
    uniqueValues.add(number);
  }
  print(duplicates);
}
