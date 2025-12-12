import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
=======
import '/controllers/farmasi_controller.dart';
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import '/routes/app_routes.dart';

class AntrianFarmasiPage extends StatelessWidget {
  const AntrianFarmasiPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    final c = Get.put(FarmasiController());

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
<<<<<<< HEAD
          // 🔹 Background marble
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          Positioned.fill(
            child: Image.asset(
              'assets/images/background-marble.png',
              fit: BoxFit.cover,
            ),
          ),

<<<<<<< HEAD
          // 🔹 Header biru elegan (TIDAK DIUBAH)
          Container(
            height: 95,
            width: double.infinity,
=======
          // 🔹 HEADER
          Container(
            height: 95,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            decoration: const BoxDecoration(
              color: Color(0xFF2E8BC0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              child: Row(
<<<<<<< HEAD
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ⭐ Back ke HomePage1
=======
                children: [
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Get.offAllNamed(AppRoutes.home1),
                  ),
<<<<<<< HEAD

                  const Expanded(
                    child: Center(
                      child: Text(
                        "Antrian Farmasi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'LexendExa',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
=======
                  const SizedBox(width: 4),
                  const Text(
                    "Antrian Farmasi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'LexendExa',
                    ),
                  ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                ],
              ),
            ),
          ),

<<<<<<< HEAD
          // 🔹 Konten utama
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 170, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Lihat nomor antrian farmasi Anda di bawah ini",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    fontFamily: 'LexendExa',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                // 🔹 Daftar antrian
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      _AntrianCard(
                        title: "Antrian A (Non Racik)",
                        currentNumber: "A014",
                      ),
                      _AntrianCard(
                        title: "Antrian B (Racik)",
                        currentNumber: "B007",
                      ),
                    ],
                  ),
                ),
              ],
            ),
=======
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 110, 16, 0),
            child: Obx(() {
              if (c.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (c.daftarFarmasi.isEmpty) {
                return const Center(
                  child: Text(
                    "Tidak ada antrian farmasi ditemukan",
                    style: TextStyle(
                      fontFamily: 'LexendExa',
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                );
              }

              // 🔥 Pisahkan racikan & non racikan
              final nonRacik = c.daftarFarmasi.where((e) => e["racikan"] == "1").toList();
final racik = c.daftarFarmasi.where((e) => e["racikan"] == "2").toList();

              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _AntrianCard(
                    title: "Non Racikan",
                    currentNumber: nonRacik.isNotEmpty
                        ? nonRacik.first["nomor"]
                        : "-",
                  ),
                  const SizedBox(height: 20),
                  _AntrianCard(
                    title: "Racikan",
                    currentNumber: racik.isNotEmpty
                        ? racik.first["nomor"]
                        : "-",
                  ),
                ],
              );
            }),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ),
        ],
      ),
    );
  }
}

// ============================================================
<<<<<<< HEAD
// 🔹 COMPONENT KARTU ANTRIAN — LAYOUT BARU LEBIH KEREN
=======
// 🔹 CARD COMPONENT
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
// ============================================================
class _AntrianCard extends StatelessWidget {
  final String title;
  final String currentNumber;

  const _AntrianCard({
    required this.title,
    required this.currentNumber,
  });

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final Color primary = const Color(0xFF2E8BC0);

    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.95),
              Colors.blue.shade50.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(
            color: primary.withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: primary.withOpacity(0.12),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // ===========================
            // BARIS ATAS: TITLE + BADGE
            // ===========================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Antrian
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primary,
                      fontFamily: 'LexendExa',
                    ),
                  ),
                ),

                // Badge kecil status aktif
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: primary.withOpacity(0.5),
                      width: 0.8,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.green.shade400,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "Sedang berjalan",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black87,
                          fontFamily: 'LexendExa',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            // ===========================
            // BARIS TENGAH: NOMOR BESAR
            // ===========================
            Row(
              children: [
                // Nomor antrian besar
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: primary.withOpacity(0.05),
                      border: Border.all(
                        color: primary.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Nomor saat ini",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontFamily: 'LexendExa',
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          currentNumber,
                          style: TextStyle(
                            color: primary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'LexendExa',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Info kecil di samping nomor
                // Expanded(
                //   flex: 2,
                //   child: Column(
                //     children: [
                //       Container(
                //         padding: const EdgeInsets.symmetric(
                //           horizontal: 10,
                //           vertical: 10,
                //         ),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(14),
                //           color: Colors.white,
                //           border: Border.all(
                //             color: primary.withOpacity(0.18),
                //           ),
                //         ),
                //         child: Row(
                //           children: [
                //             Icon(
                //               Icons.access_time,
                //               size: 18,
                //               color: primary.withOpacity(0.9),
                //             ),
                //             const SizedBox(width: 8),
                //             const Expanded(
                //               child: Text(
                //                 "Harap bersiap 3 nomor sebelum giliran Anda.",
                //                 style: TextStyle(
                //                   fontSize: 10,
                //                   height: 1.4,
                //                   color: Colors.black87,
                //                   fontFamily: 'LexendExa',
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       const SizedBox(height: 8),
                //       Row(
                //         children: [
                //           Icon(
                //             Icons.info_outline_rounded,
                //             size: 14,
                //             color: Colors.black45,
                //           ),
                //           const SizedBox(width: 6),
                //           const Expanded(
                //             child: Text(
                //               "Silakan duduk di area tunggu farmasi.",
                //               style: TextStyle(
                //                 fontSize: 10,
                //                 color: Colors.black54,
                //                 fontFamily: 'LexendExa',
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),

            const SizedBox(height: 10),

            // ===========================
            // BARIS BAWAH: FOOTER
            // ===========================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.local_pharmacy_rounded,
                      size: 16,
                      color: primary.withOpacity(0.9),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "Loket Farmasi",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black87,
                        fontFamily: 'LexendExa',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Update real-time",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                        fontFamily: 'LexendExa',
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 18,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
=======
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E8BC0),
              fontFamily: 'LexendExa',
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF2E8BC0).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent.withOpacity(0.2)),
            ),
            child: Center(
              child: Text(
                currentNumber,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E8BC0),
                  letterSpacing: 1.5,
                  fontFamily: 'LexendExa',
                ),
              ),
            ),
          ),
        ],
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      ),
    );
  }
}
