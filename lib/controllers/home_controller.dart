import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/user.dart';
import 'package:getx_demo/pages/profile_page.dart';

// the home controller
class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get counter => _counter;
  List<User> get users => _users;
  bool get loading => _loading;

  @override
  void onInit() {
    // on this method, the view is not ready, just the context
    super.onInit();
    print("same as initState");
  }

  @override
  void onReady() {
    // on this method, the view is ready and accessible
    super.onReady();
    print("on Ready");
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    this._loading = false;

    update(['users']);
  }

  void increment() {
    this._counter++;
    update(['text']);
  }

  Future<void> showUserProfile(User user) async {
    final result = await Get.to<String>(ProfilePage(), arguments: user);

    if (result != null) {
      print("🤓 result $result");
    }
  }
}
