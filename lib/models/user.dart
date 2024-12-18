import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String id;
  final String name;
  final String password;
  final String email;
  final String address;
  final String token;
  final String type;

  User({
    required this.id,
    required this.name,
    required this.password,
    required this.email,
    required this.address,
    required this.token,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'email': email,
      'address': address,
      'token': token,
      'type': type,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      address: map['address'] as String,
      token: map['token'] ?? '',
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) );
}
