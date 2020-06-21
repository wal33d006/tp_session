import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:tp_session/main.dart';

void main() {
  test('Counter increments smoke test', () async {
    var response = await http.get('https://jsonplaceholder.typicode.com/users');
    var list = jsonDecode(response.body) as List;

    var userList = list.map((item) => User.fromJson(item)).toList();

    print(userList.first.name);
  });}
