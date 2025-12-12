import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import '../../routes/app_routes.dart';
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import '../../controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
<<<<<<< HEAD

      // ===================== APPBAR =====================
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E8BC0),
        elevation: 0,
=======
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E8BC0),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        centerTitle: true,
        title: const Text(
          "Profil",
          style: TextStyle(
            fontFamily: "LexendExa",
            color: Colors.white,
<<<<<<< HEAD
            fontWeight: FontWeight.bold,
            fontSize: 18,
=======
            fontSize: 18,
            fontWeight: FontWeight.bold,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ),
        ),
      ),

      body: Obx(() {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
<<<<<<< HEAD
              // ===================== KARTU PROFIL TANPA BORDER =====================
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),

                  // ❗ Border dihilangkan
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0,
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
=======
              // ================================================
              // FOTO + NAMA + RM (bisa ditekan seperti Instagram)
              // ================================================
              GestureDetector(
                onTap: () => _showSwitchRM(context, c),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xFF2E8BC0),
                      child: Icon(Icons.person, size: 48, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
<<<<<<< HEAD

=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    Text(
                      c.nama.value,
                      style: const TextStyle(
                        fontFamily: "LexendExa",
<<<<<<< HEAD
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      c.rm.value,
                      style: const TextStyle(
                        fontFamily: "LexendExa",
=======
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "RM: ${c.rm.value}",
                      style: const TextStyle(
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
<<<<<<< HEAD
=======
                    const SizedBox(height: 8),
                    const Icon(Icons.keyboard_arrow_down_rounded, size: 28),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  ],
                ),
              ),

<<<<<<< HEAD
              const SizedBox(height: 20),

              // ===================== DROPDOWN PASIEN/RM =====================
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFF2E8BC0), width: 1.3),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: "${c.nama.value} (${c.rm.value})",
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    style: const TextStyle(
                      fontFamily: "LexendExa",
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    items: c.pasienList
                        .map((p) => "${p['nama']} (${p['rm']})")
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                    onChanged: (value) {
                      final index = c.pasienList.indexWhere(
                        (p) => "${p['nama']} (${p['rm']})" == value,
                      );
                      c.setPasien(index);
                    },
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ===================== USERNAME =====================
              _boxField(label: "Username", value: c.username.value),

              const SizedBox(height: 18),

              // ===================== NOMOR WA =====================
              _boxField(label: "Nomor WA", value: c.wa.value),

              const SizedBox(height: 35),

              // ===================== LOGOUT =====================
=======
              const SizedBox(height: 25),

              // ================================================
              // DATA DETAIL
              // ================================================
              _boxField("Nomor WA", c.wa.value),
              const SizedBox(height: 18),

              _boxField("Alamat", c.alamat.value),
              const SizedBox(height: 18),

              _boxField("Tanggal Lahir", c.tglLahir.value),
              const SizedBox(height: 18),

              _boxField(
                "Jenis Kelamin",
                c.sex.value == "L" ? "Laki-laki" : "Perempuan",
              ),

              const SizedBox(height: 35),

              // LOGOUT BUTTON
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              TextButton(
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: const Text(
                        "Konfirmasi Logout",
                        style: TextStyle(
                          fontFamily: "LexendExa",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      content: const Text(
<<<<<<< HEAD
                        "Apakah Anda yakin ingin keluar dari akun?",
=======
                        "Apakah Anda yakin ingin keluar?",
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                        style: TextStyle(
                          fontFamily: "LexendExa",
                          fontSize: 13,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Get.back(),
<<<<<<< HEAD
                          child: const Text(
                            "Batal",
                            style: TextStyle(
                              fontFamily: "LexendExa",
                              color: Colors.grey,
                            ),
                          ),
=======
                          child: const Text("Batal"),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2E8BC0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Get.back();
<<<<<<< HEAD
                            Get.offAllNamed(AppRoutes.home);
=======
                            Get.offAllNamed("/home");
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                          },
                          child: const Text(
                            "Ya, Log Out",
                            style: TextStyle(
                              fontFamily: "LexendExa",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                    fontFamily: "LexendExa",
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
<<<<<<< HEAD

              const SizedBox(height: 40),
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            ],
          ),
        );
      }),
    );
  }

<<<<<<< HEAD
  // ===================== CUSTOM FIELD =====================
  Widget _boxField({required String label, required String value}) {
=======
  // ============================================================
  //  FUNGSI POPUP BOTTOM SHEET (IG STYLE)
  // ============================================================
  void _showSwitchRM(BuildContext context, ProfileController c) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Obx(() {
          if (c.pasienList.isEmpty) {
            return const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("Tidak ada nomor pasien ditemukan")),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Pilih Rekam Medis",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // LIST RM
                ...c.pasienList.map((p) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(p["nama_pas"]),
                    subtitle: Text("RM: ${p["no_cm"]}"),
                    onTap: () {
                      c.pilihRM(p);   
                      Navigator.pop(context); // tutup bottom sheet
                    },
                  );
                }).toList(),
              ],
            ),
          );
        });
      },
    );
  }

  // ============================================================
  //  CUSTOM FIELD
  // ============================================================
  Widget _boxField(String label, String value) {
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: value),
      decoration: InputDecoration(
        labelText: label,
<<<<<<< HEAD
        labelStyle: const TextStyle(
          fontFamily: "LexendExa",
          color: Color(0xFF2E8BC0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Color(0xFF2E8BC0),
          fontFamily: "LexendExa",
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Color(0xFF2E8BC0), width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Color(0xFF2E8BC0), width: 1.7),
        ),
      ),
      style: const TextStyle(
        fontFamily: "LexendExa",
        fontSize: 14,
=======
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      ),
    );
  }
}
