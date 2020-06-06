import 'package:flutter_test/flutter_test.dart';
import 'package:tp_session/user_controller.dart';


void main() {
  test(
    'Counter increments smoke test',
    () async {
      UsersController controller = UsersController();
      var users = await controller.getUsers();
      print(users.first.name);
    },
  );
}
