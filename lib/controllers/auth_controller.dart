import 'package:get/get.dart';
<<<<<<< HEAD

class AuthController extends GetxController {
  // RxBool untuk reactive
  var isLoggedIn = false.obs;

  // Simulasi login/logout
=======
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();

    // 🔥 CEK TOKEN SAAT APP DIBUKA
    final token = box.read("token");
    if (token != null && token.toString().isNotEmpty) {
      isLoggedIn.value = true;
      print("✅ AUTO LOGIN: TOKEN DITEMUKAN");
    } else {
      print("❌ BELUM LOGIN");
    }
  }

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
<<<<<<< HEAD
=======
    box.remove("token"); // hapus token saat logout
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  }
}
