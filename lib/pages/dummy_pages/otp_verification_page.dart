import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/otp_controller.dart';
<<<<<<< HEAD
import '/routes/app_routes.dart';
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

class OTPVerificationPage extends StatelessWidget {
  OTPVerificationPage({super.key});

  final otpC = Get.find<OtpController>();
  final otpControllers = List.generate(6, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // Ambil NIK dari halaman Login
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    final args = Get.arguments;
    final String nik = (args?['nik'] ?? '').toString();

    return Scaffold(
      appBar: AppBar(title: const Text("Verifikasi OTP"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              "Masukkan kode OTP yang dikirim ke WhatsApp kamu",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 10),
            Text(
              nik,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

<<<<<<< HEAD
            // 6 digit OTP boxes
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45,
                  height: 55,
                  child: TextField(
                    controller: otpControllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                );
              }),
            ),

            const SizedBox(height: 50),

<<<<<<< HEAD
            // Tombol Verifikasi tanpa API
            ElevatedButton(
              onPressed: () {
                final otp = otpControllers.map((c) => c.text).join();

                if (otp.length != 6) {
                  Get.snackbar(
                    "OTP Tidak Lengkap",
                    "Masukkan 6 digit OTP",
                    backgroundColor: Colors.orange.shade100,
                    colorText: Colors.black87,
                  );
                  return;
                }

                if (otp == "123456") {
                  // OTP benar → ke Homepage1
                  Get.offAllNamed(AppRoutes.home1);
                } else {
                  Get.snackbar(
                    "OTP Salah",
                    "Kode OTP yang kamu masukkan salah!",
                    backgroundColor: Colors.red.shade100,
                    colorText: Colors.red.shade900,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                "Verifikasi",
                style: TextStyle(fontSize: 18, color: Colors.white),
=======
            // TOMBOL VERIFIKASI
            Obx(
              () => ElevatedButton(
                onPressed: otpC.isLoading.value
                    ? null
                    : () async {
                        // Gabungkan 6 digit otp tanpa spasi
                        final otp = otpControllers
                            .map((c) => c.text.trim())
                            .join("");

                        // Cek apakah semua digit terisi
                        if (otp.length != 6 || otp.contains(" ")) {
                          Get.snackbar(
                            "OTP tidak valid",
                            "Pastikan semua kotak OTP terisi",
                          );
                          return;
                        }

                        await otpC.verifyOtp(
                          nik: nik.trim(),
                          otp: otp,
                        );
                      },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
                child: otpC.isLoading.value
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        "Verifikasi",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              ),
            ),

            const SizedBox(height: 20),

<<<<<<< HEAD
            // Tombol kirim ulang dummy
            TextButton(
              onPressed: () {
                Get.snackbar(
                  "OTP Dikirim Ulang",
                  "Gunakan kode dummy: 123456",
                  backgroundColor: Colors.blue.shade50,
                  colorText: Colors.blue.shade900,
                );
              },
              child: const Text("Kirim Ulang OTP"),
=======
            // TOMBOL RESEND OTP
            Obx(
              () => TextButton(
                onPressed: otpC.isResending.value
                    ? null
                    : () async {
                        await otpC.resendOtp(nik.trim());
                      },
                child: otpC.isResending.value
                    ? const Text("Mengirim ulang...")
                    : const Text("Kirim Ulang OTP"),
              ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            ),
          ],
        ),
      ),
    );
  }
}
