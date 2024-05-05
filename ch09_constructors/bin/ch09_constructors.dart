import 'package:ch09_constructors/user.dart';

void main() {
  defaultConstructor();
  print('------------------------------');
  customConstructors();
}

// # Default Constructor
void defaultConstructor() {
  var address = Address2();
  print(address);
}

class Address {
  var value = '';
}

// The above class definition is equivalent to the following:
class Address2 {
  Address2();
  var value = '';
}

// # Custom Constructors
void customConstructors() {
  /*
  final user = User(42, 'Ray');
  print(user);
  */

  final user = User(id: 42, name: 'Ray');
  print(user);

  final anonymouseUser = User.anonymous();
  print(anonymouseUser);

  // ## Why Aren't the Private Properties Private?
  final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker'; // No longer accessible after the class has been moved to its own library
  print(vicki);

  // ## Benefits of Using Const
  const one = User.anonymous();
  const two = User.anonymous();
  print(one == two); // => true

  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra);
}

/*
class User {
  // ## Long-Form Constructor
  /*
  User(int id, String name) {
    this.id = id;
    this.name = name;
  }
  */
  // ## Short-Form Constructor
  /*
  User(this.id, this.name);
  */

  // # Named Constructrors
  /*
  User.anonymous() {
    id = 0;
    name = 'anonymous';
  }
  */

  // # Forwarding Constructors
  /*
  User.anonymous() : this(0, 'anonymous');
  */

  // # Optional and Named Parameters
  // ## Adding Named Parameters for User
  // unnamed constructor
  // # Initializer Lists
  User({int id = 0, String name = 'anonymous'})
      : _name = name,
        _id = id {
    print('User name is $name');
  }

  // named constructor
  User.anonymous() : this();

  /*
  // Default values can be removed after adding the forwarding constructor
  int id = 0;
  String name = '';
  */
  // ## Private Variables
  int _id;
  String _name;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
*/

// # Constructor Comparisions