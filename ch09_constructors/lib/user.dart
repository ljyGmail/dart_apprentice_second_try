class User {
  // ## Making Classes Immutable
  const User({int id = 0, String name = 'anonymous'})
      : _name = name,
        _id = id;
  /*
  // Const constructors can't have body:
  User({int id = 0, String name = 'anonymous'})
      : _name = name,
        _id = id {
    print('User name is $name');
  }
  */

  const User.anonymous() : this();

  /*
  User.fromJson(Map<String, Object> json)
      : _id = json['id'] as int,
        _name = json['name'] as String;
  */

  // # Constant Constructors
  // ## Making Properties Immutable
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

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
}
