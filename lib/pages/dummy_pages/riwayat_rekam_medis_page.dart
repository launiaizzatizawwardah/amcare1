import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'riwayat_detail_page.dart';
import '../../models/rekam_medis_model.dart';
<<<<<<< HEAD
import '../../routes/app_routes.dart';

class RiwayatRekamMedisPage extends StatelessWidget {
  const RiwayatRekamMedisPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> riwayatList = [
      {
        'tanggal': '20 Nov 2025',
        'hari': '20',
        'poli': 'Poli Umum',
        'dokter': 'dr. Syahrizal Ardhiyandi Hidayat, MARS',
        'asuransi': 'Jasa Raharja',
      },
      {
        'tanggal': '15 Okt 2025',
        'hari': '15',
        'poli': 'Poli Gigi',
        'dokter': 'drg. Sinta Dewi',
        'asuransi': 'BPJS Kesehatan',
      },
      {
        'tanggal': '02 Sep 2025',
        'hari': '02',
        'poli': 'Poli Anak',
        'dokter': 'dr. Budi, SpA',
        'asuransi': 'Mandiri',
      },
      {
        'tanggal': '12 Agu 2025',
        'hari': '12',
        'poli': 'Poli Penyakit Dalam',
        'dokter': 'dr. Rina, SpPD',
        'asuransi': 'BPJS Kesehatan',
      },
    ];

    return Scaffold(
      extendBodyBehindAppBar:
          true, // ⭐ penting agar background masuk ke belakang AppBar
      backgroundColor: Colors.transparent,

      // ⭐ APPBAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95),
        child: Container(
          height: 95,
          decoration: const BoxDecoration(
            color: Color(0xFF2E8BC0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.white, size: 26),
                  onPressed: () => Get.offAllNamed(AppRoutes.home1),
                ),
                const SizedBox(width: 4),
                const Text(
                  "Riwayat Rekam Medis",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'LexendExa',
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // ⭐ BODY
      body: Stack(
        children: [
          // ⭐ BACKGROUND MARBLE
          Positioned.fill(
            child: Image.asset(
              'assets/images/background-marble.png',
              fit: BoxFit.cover,
            ),
          ),

          // ⭐ KONTEN
          SingleChildScrollView(
            padding:
                const EdgeInsets.fromLTRB(16, 120, 16, 24), // naikkan konten
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // INFO PASIEN
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
=======
import '../../controllers/riwayat_controller.dart';
import '../../routes/app_routes.dart';

class RiwayatRekamMedisPage extends StatelessWidget {
  RiwayatRekamMedisPage({super.key});

  final RiwayatController c = Get.put(RiwayatController());

  @override
  Widget build(BuildContext context) {
    return Container(
      /// 🔵 BACKGROUND FULL
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background-marble.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: false, // 🔥 SUPAYA TIDAK NGAMBANG

        // ================= APPBAR FIX =================
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(95),
          child: Container(
            height: 95,
            decoration: const BoxDecoration(
              color: Color(0xFF2E8BC0), // 🔥 AppBar solid, TIDAK transparan
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: SafeArea(
              child: Row(
                children: [
                  IconButton(
                    icon:
                        const Icon(Icons.arrow_back, color: Colors.white, size: 26),
                    onPressed: () => Get.offAllNamed(AppRoutes.home1),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Riwayat Rekam Medis",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'LexendExa',
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // ================= BODY =================
        body: Obx(() {
          if (c.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (c.riwayat.isEmpty) {
            return const Center(
              child: Text(
                "Tidak ada riwayat ditemukan",
                style: TextStyle(fontFamily: "LexendExa", fontSize: 16),
              ),
            );
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

            /// 🔥 Mulai dari BAWAH AppBar (tidak nabrak)
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),

            child: Column(
              children: [
                // ================= INFO PASIEN =================
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Column(
                        children: [
                          Text(
                            'Nomor Rekam Medis',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontFamily: 'LexendExa',
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
<<<<<<< HEAD
                            '098645',
=======
                            '10027878',
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'LexendExa',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Total Kunjungan',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontFamily: 'LexendExa',
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '4',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'LexendExa',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

<<<<<<< HEAD
                for (var item in riwayatList) ...[
                  _buildRiwayatCard(item, riwayatList.indexOf(item)),
                  const SizedBox(height: 20),
                ],
              ],
            ),
          ),
        ],
=======
                // ================= LIST RIWAYAT =================
                Column(
                  children: List.generate(
                    c.riwayat.length,
                    (i) => Column(
                      children: [
                        _buildRiwayatCard(c.riwayat[i], i),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      ),
    );
  }

<<<<<<< HEAD
  // ⭐ KARTU RIWAYAT
  Widget _buildRiwayatCard(Map<String, String> item, int index) {
=======
  // =============================================================
  // CARD RIWAYAT
  // =============================================================
  Widget _buildRiwayatCard(RekamMedisItem item, int index) {
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
<<<<<<< HEAD
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tanggal
=======
        children: [
          /// ================= BOX TANGGAL =================
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
<<<<<<< HEAD
                    item['hari']!,
=======
                    _extractDay(item.tanggal),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LexendExa',
                    ),
                  ),
                  Text(
<<<<<<< HEAD
                    item['tanggal']!,
=======
                    item.tanggal,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontFamily: 'LexendExa',
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 14),

<<<<<<< HEAD
=======
          /// ================= DETAIL =================
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
<<<<<<< HEAD
                  item['poli']!,
=======
                  item.poli,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LexendExa',
                  ),
                ),
                const SizedBox(height: 2),
                Text(
<<<<<<< HEAD
                  item['dokter']!,
=======
                  item.dokter,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontFamily: 'LexendExa',
                  ),
                ),
<<<<<<< HEAD
                const SizedBox(height: 6),
=======

                const SizedBox(height: 6),

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                Row(
                  children: [
                    const Icon(Icons.verified_user,
                        color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    const Text(
                      'Asuransi',
                      style: TextStyle(
                        fontSize: 12,
<<<<<<< HEAD
                        color: Colors.black87,
                        fontFamily: 'LexendExa',
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      item['asuransi']!,
=======
                        fontFamily: 'LexendExa',
                      ),
                    ),
                    const SizedBox(width: 8),

                    Text(
                      "BPJS",
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontFamily: 'LexendExa',
                      ),
                    ),
<<<<<<< HEAD
                    const Spacer(),
=======

                    const Spacer(),

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    ElevatedButton(
                      onPressed: () {
                        showGeneralDialog(
                          context: Get.context!,
                          barrierDismissible: true,
                          barrierLabel: "Detail",
<<<<<<< HEAD
                          transitionDuration: const Duration(milliseconds: 280),
                          pageBuilder: (_, __, ___) {
                            return DetailRiwayatRekamMedis(
                              data: dummyRekamMedis[index],
                            );
                          },
                          transitionBuilder: (_, animation, __, child) {
                            return Transform.scale(
                              scale: animation.value,
                              child: Opacity(
                                opacity: animation.value,
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Detail',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'LexendExa',
                          color: Colors.white,
=======
                          transitionDuration:
                              const Duration(milliseconds: 250),
                          pageBuilder: (_, __, ___) =>
                              DetailRiwayatRekamMedis(data: item),
                        );
                      },
                      child: const Text(
                        "Detail",
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'LexendExa',
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
<<<<<<< HEAD
=======

  String _extractDay(String date) {
    try {
      return date.split("-").last;
    } catch (_) {
      return "-";
    }
  }
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
}
