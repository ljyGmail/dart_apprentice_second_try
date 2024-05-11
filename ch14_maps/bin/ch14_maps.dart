import 'dart:convert';

void main() {
  creatingAMap();
  print('------------------------------');
  operationsOnAMap();
  print('------------------------------');
  mapsClassesAndJson();
}

// # Creating a Map
void creatingAMap() {
  final Map<String, int> emptyMap = {};
  print(emptyMap.runtimeType);

  final emptyMap2 = <String, int>{};
  print(emptyMap2.runtimeType);

  final emptySomething = {};
  print(emptySomething.runtimeType);

  final mySet = <String>{};
  print(mySet.runtimeType);

  // ## Initializing a Map With Values
  final inventory = {
    'cake': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);

  // ## Unique Keys
  final treasureMap = {
    'garbage': 'in the dumpster',
    'glasses': 'on your head',
    // 'gold': 'in the cave', // only one 'gold' key is kept
    // 'gold': 'under your mattress',
  };
  print(treasureMap);

  final treasureMap2 = {
    'grabate': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };
  print(treasureMap2);
  print(treasureMap2.runtimeType);

  // Values don't have to be unique
  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
    'code': 'clean',
  };
  print(myHouse);
}

// # Opertions on a Map
void operationsOnAMap() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  // ## Accessing Key-Value Pairs
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes.runtimeType);
  print(numberOfCakes);
  print(numberOfCakes?.isEven);

  // ## Adding Elements to a Map
  inventory['brownies'] = 3;
  print(inventory);

  // ## Updating an Element
  inventory['cakes'] = 1;
  print(inventory);

  // ## Removing Elements From a Map
  inventory.remove('cookies');
  print(inventory);

  // ## Accessing Properties
  print(inventory.isEmpty); // => false
  print(inventory.isNotEmpty); // => true
  print(inventory.length); // => 4

  print(inventory.keys);
  print(inventory.values);

  // ## Checking for Key or Value Existence
  print(inventory.containsKey('pies')); // => true
  print(inventory.containsValue(42)); // => false

  // ## Looping Over Elements of a Map
  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  for (final entry in inventory.entries) {
    print('${entry.key}-> ${entry.value}');
  }
}

// # Maps, Classes and JSON
void mapsClassesAndJson() {
  // ## Converting an Object to a Map
  final userObject = User(
    id: 1234,
    name: 'John',
    emails: [
      'john@example.com',
      'jhagemann@example.com',
    ],
  );
  print(userObject);

  final userMap = {
    'id': 1234,
    'name': 'John',
    'emails': [
      'john@example.com',
      'jhagemann@example.com',
    ],
  };
  print(userMap);

  final userMap2 = userObject.toJson();
  print(userMap2);

  // ## Converting a Map to a JSON String
  final userString = jsonEncode(userMap2);
  print(userString);

  // ## Converting a JSON String to a Map
  final jsonString =
      '{"id":4321,"name":"Marcia","emails":["marcia@example.com"]}';
  final jsonMap = jsonDecode(jsonString);
  print(jsonMap);
  print(jsonMap.runtimeType);

  // ### Preventing Hidden Dynamic Types
  // ### Explicitly Writing Dynamic
  // ### Handling Errors
  if (jsonMap is Map<String, dynamic>) {
    print("You've got a map!");
  } else {
    print('Your JSON must have been in the wrong format.');
  }

  // ## Converting a Map to an Object
  final userMarcia = User.fromJson(jsonMap);
  print(userMarcia);
}

class User {
  const User({
    required this.id,
    required this.name,
    required this.emails,
  });

  final int id;
  final String name;
  final List<String> emails;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }

  factory User.fromJson(Map<String, dynamic> jsonMap) {
    // 1
    dynamic id = jsonMap['id'];
    if (id is! int) id = 0;
    // 2
    dynamic name = jsonMap['name'];
    if (name is! String) name = '';
    // 3
    dynamic maybeEmails = jsonMap['emails'];
    final emails = <String>[];
    if (maybeEmails is List) {
      for (dynamic email in maybeEmails) {
        if (email is String) emails.add(email);
      }
    }

    // 4
    return User(
      id: id,
      name: name,
      emails: emails,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, emails: $emails)';
  }
}
