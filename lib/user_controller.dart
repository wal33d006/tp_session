import 'dart:convert';

import 'package:tp_session/user_model.dart';
import 'package:http/http.dart' as http;

class UsersController {
  Future<List<User>> getUsers() async {
    var response = await http.get('https://jsonplaceholder.typicode.com/users');
    var list = jsonDecode(response.body) as List;
    return list.map((item) => User.fromJson(item)).toList();
  }
}