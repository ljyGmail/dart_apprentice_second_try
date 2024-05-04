void main() {
  creatingObjectFromClass();
  print('------------------------------');
  objectsAsReferences();
  print('------------------------------');
  encapsulation();
}

// # Defining a Class
class User {
  int id = 0;
  String name = '';

  // # Adding methods
  // ## Understanding Object Serialization
  // ## Adding a JSON Serialization Method
  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override // # Printing an Object
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

// # Creating an Object From a Class
void creatingObjectFromClass() {
  final user = User();
  // ## The Optional Keyword New
  // final user2 = new User(); // Before version 2.0 of Dart

  // # Assigining Values to Properties
  user.name = 'Ray';
  user.id = 42;

  // # Printing an Object
  print(user); // => Instance of 'User'

  // # Adding methods
  print(user.toJson());

  // # Cascade Notation
  final user2 = User()
    ..name = 'Kodeco'
    ..id = 43;
  print(user2);
}

// # Objects as References
class MyClass {
  var myProperty = 1;
}

void objectsAsReferences() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  anotherObject.myProperty = 2;
  print(myObject.myProperty);
}

// # Encapsulation
// ## Hiding the Internals
class Password {
  String _plainText = 'pass123'; // library private

  // ## Getters
  /*
  String getPlainText() {
    return _plainText;
  }
  */
  String get plainText => _plainText;

  // ### Calculated Properties
  String get obfuscated {
    final length = _plainText.length;
    return '*' * length;
  }

  // ## Setters
  // set plainText(String text) => _plainText = text;
  // ### Using Setters for Data Validation
  set plainText(String text) {
    if (text.length < 6) {
      print('Passwords must have 6 or more characters!');
      return;
    }
    _plainText = text;
  }
}

void encapsulation() {
  final myPassword = Password();
  // final text = myPassword.getPlainText();
  // print(text); // => pass123
  final text = myPassword.plainText;
  print(text); // => pass123

  // ### Getters Don't Set
  // myPassword.plainText = '123456';

  final obfuscated = myPassword.obfuscated;
  print(obfuscated);

  myPassword.plainText = r'Pa$$vv0Rd';
  print(myPassword.plainText);

  final shortPassword = Password();
  shortPassword.plainText = 'aaa';
  final result = shortPassword.plainText;
  print(result);
}

// ## No Need to Overuse Getters And Setters
class Email {
  String _value = '';

  String get value => _value;
  set value(String value) => _value = value;
}

class Email2 {
  String value = '';
}
