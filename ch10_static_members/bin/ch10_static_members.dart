import 'package:ch10_static_members/math.dart' as math;

void main() {
  staticVariables();
  print('------------------------------');
  staticMethods();
}

// # Static Variables
// ## Constants
// ## Default Font Size Example
class TextStyle {
  static const _defaultFontSize = 17.0;

  TextStyle({this.fontSize = _defaultFontSize});
  final double fontSize;
}

// ## Color Codes Example
class Colors {
  static const int red = 0xFFD13F13;
  static const int purple = 0xFF8107D9;
  static const int blue = 0xFF1432C9;
}

// ## Singleton Pattern
class MySingleton {
  MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}

void staticVariables() {
  final backgroundColor = Colors.purple;
  print(backgroundColor.runtimeType);

  // final mySingleton = MySingleton.instance;
  final mySingleton = MySingleton();
  print(mySingleton.runtimeType);
}

// # Static Methods
// # Utility Methods
/*
class Math {
  static num max(num a, num b) {
    return (a > b) ? a : b;
  }

  static num min(num a, num b) {
    return (a < b) ? a : b;
  }
}
*/

// ## Creating New Objects
class User {
  const User({int id = 0, String name = 'anonymous'})
      : _id = id,
        _name = name;

  const User.anonymous() : this();

  final int _id;
  final String _name;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }

  factory User.ray() {
    return User(id: 42, name: 'Ray');
  }

  /*
  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
  */

  // static method version:
  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
}

void staticMethods() {
  // print(Math.max(2, 3)); // => 3
  // print(Math.min(2, 3)); // => 2

  print(math.max(2, 3)); // => 3
  print(math.min(2, 3)); // => 2

  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra);
}
