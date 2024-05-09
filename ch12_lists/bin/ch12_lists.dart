void main() {
  basicListOperations();
  print('------------------------------');
  mutableAndImmutableLists();
  print('------------------------------');
  listProperties();
  print('------------------------------');
  loopingOverElementsOfList();
  print('------------------------------');
  codeAsUi();
  print('------------------------------');
  handlingNullableLists();
}

// # Basic List Operations
void basicListOperations() {
  // ## Creating a List
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = [];
  print(desserts.runtimeType);

  var snacks = []; // => a list of dynamic
  print(snacks.runtimeType);
  List<String> snacks2 = [];
  print(snacks2.runtimeType);

  // a nicer syntax
  var snacks3 = <String>[];
  print(snacks3.runtimeType);

  // ## Printing Lists
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);

  // ## Accessing Elements
  final secondElement = desserts[1];
  print(secondElement);

  final index = desserts.indexOf('pie');
  final value = desserts[index];
  print('The value at index $index is $value.');

  // ## Assigning Values to List Elements
  desserts[1] = 'cake';
  print(desserts);

  // ## Adding Elements to the End of a List
  desserts.add('brownies');
  print(desserts);

  // ## Inserting Elements
  desserts.insert(1, 'ice cream');
  print(desserts);

  // ## Removing Elements
  desserts.remove('cake');
  print(desserts);

  desserts.removeAt(0);
  print(desserts);

  // ## Sorting Lists
  final integers = [32, 73, 2, 343, 7, 10, 1];
  integers.sort();
  print(integers);

  final smallest = integers[0];
  print(smallest); // => 1

  final lastIndex = integers.length - 1;
  final largest = integers[lastIndex];
  print(largest); // => 343

  final animals = ['zebra', 'dog', 'alligator', 'cat'];
  animals.sort();
  print(animals);
}

// # Mutable and Immutable Lists
void mutableAndImmutableLists() {
  final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = []; // now allowed
  // desserts = ['cake', 'ice cream']; // not allowed
  // desserts = someOtherList; // now allowed

  desserts.remove('cookies'); // OK
  desserts.remove('cupcakes'); // OK
  desserts.add('ice cream'); // OK

  // ## The House on Wenderlich Way
  // ## Creating Deeply Immutable Lists
  // ### Const Variables
  const desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts2.add('brownie'); // now allowed
  // desserts2.remove('pie'); // now allowed
  // desserts2[0] = 'fudge'; // not allowed

  final desserts3 = const ['dookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts3);
  // desserts3.add('one');

  // ### Unmodifiable Lists
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

// # List Properties
void listProperties() {
  const drinks = ['water', 'milk', 'juice', 'soda'];

  // ## Accessing First and List Elements
  print(drinks.first); // drinks[0]
  print(drinks.last); // drinks[drinks.length - 1]

  // ## Checking If a List Contains Any Elements
  print(drinks.isEmpty); // => drinks.length == 0
  print(drinks.isNotEmpty); // => drinks.length > 0
}

// # Looping Over the Elements of a List
void loopingOverElementsOfList() {
  // ## Using a For Loop
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  for (int i = 0; i < desserts.length; i++) {
    final item = desserts[i];
    print('I like $item.');
  }

  // ## Using a For-In Loop
  for (final item in desserts) {
    print('I also like $item.');
  }
}

// # Code as UI
void codeAsUi() {
  // ## Spread Operator(...)
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

  final desserts = ['donuts'];
  desserts.addAll(pastries);
  desserts.addAll(candy);
  print(desserts);

  const desserts2 = [
    'donuts',
    ...pastries,
    ...candy,
  ];
  print(desserts2);

  // ## Collection if
  const peanutAllergy = true;

  const sensitiveCandy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(sensitiveCandy);

  // ## Collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
}

// # Handling Nullable Lists
void handlingNullableLists() {
  // ## Nullable Lists vs. Nullable Elements
  // ### Nullable Lists
  List<int>? nullable = [2, 4, 3, 7];
  nullable = null;
  print(nullable);

  // ### Nullable Elements
  List<int?> nullableElements = [2, 4, null, 3, 7];
  print(nullableElements);

  // ### Nullable Lists With Nullable Elements
  List<int?>? nullableListAndElements = [2, 4, null, 3, 7];
  nullableListAndElements = null;
  print(nullableListAndElements);

  // ## Using the Basic Null-Aware Operators
  List<String?> drinks = ['milk', 'water', null, 'soda'];
  // 1
  for (String? drink in drinks) {
    // 2
    int letters = drink?.length ?? 0;
    print(letters);
  }

  // ## Using Null-Aware Collection Operators
  // ### Null-Aware Index Operator(?[])
  List<String>? myDesserts = ['cake', 'pie'];
  myDesserts = null;
  String? dessertToday = myDesserts?[1];
  print(dessertToday);

  // ### Null-Aware Spread Operator(...?)
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);
}
