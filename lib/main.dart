import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'routes/app_routes.dart';

// 🧠 Controller
import 'controllers/auth_controller.dart';
import 'controllers/otp_controller.dart';
import 'controllers/main_controller.dart'; // ⭐ controller bottom nav

void main() {
  // Controller global
  Get.put(AuthController());
  Get.put(OtpController());
  Get.put(MainController()); // ⭐ WAJIB agar bottom nav tetap hidup
=======
import 'package:get_storage/get_storage.dart';

import 'routes/app_routes.dart';

// Controllers
import 'controllers/auth_controller.dart';
import 'controllers/otp_controller.dart';
import 'controllers/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 WAJIB untuk menyimpan token/session_key
  await GetStorage.init();

  // Register controllers
  Get.put(AuthController());
  Get.put(OtpController());
  Get.put(MainController());
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RS AMC',
<<<<<<< HEAD
      initialRoute: AppRoutes.splash, // tetap sama
=======
      initialRoute: AppRoutes.splash,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
