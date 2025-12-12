import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/poliklinik_controller.dart';
import '/routes/app_routes.dart';
<<<<<<< HEAD
import '/models/poliklinik_model.dart';
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

class JadwalDokterPage extends StatelessWidget {
  final PoliklinikController controller = Get.put(PoliklinikController());

  JadwalDokterPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // ⭐ Ambil nama poliklinik dari halaman sebelumnya
    final String? selectedPoli = Get.arguments;

    // ⭐ Jalankan filter awal berdasarkan poliklinik
    if (selectedPoli != null) {
      Future.microtask(() {
        controller.filterByKlinik(selectedPoli);
      });
    }
=======
    final args = Get.arguments ?? {};
    final String from = args["from"] ?? "home";
    final String? selectedPoli = args["poli"];

    // ============================================================
    // 🔥 FILTER POLI HANYA JIKA DATANG DARI HALAMAN POLIKLINIK
    // ============================================================
    Future.microtask(() {
      if (from == "klinik" && selectedPoli != null) {
        ever(controller.dokterList, (_) {
          controller.filterByKlinik(selectedPoli);
        });

        if (controller.dokterList.isNotEmpty) {
          controller.filterByKlinik(selectedPoli);
        }
      } else {
        // Jika dari homepage → tampilkan semua dokter
        controller.filteredList.value = controller.dokterList;
      }
    });
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
<<<<<<< HEAD
          // 🔹 background marble
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          Positioned.fill(
            child: Image.asset(
              'assets/images/background-marble.png',
              fit: BoxFit.cover,
            ),
          ),

<<<<<<< HEAD
          // 🔹 header melengkung
          Container(
            height: 150,
            width: double.infinity,
=======
          // ================= HEADER =================
          Container(
            height: 90,
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
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Get.offAllNamed(AppRoutes.home1),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Jadwal Dokter",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'LexendExa',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
=======
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      if (from == "klinik") {
                        Get.back();
                      } else {
                        Get.offAllNamed(AppRoutes.home1);
                      }
                    },
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Jadwal Dokter",
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
          // 🔹 konten utama
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 160, 16, 0),
            child: Column(
              children: [
                // ⭐ Search bar (masih tetap bisa cari manual)
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari Dokter atau Poliklinik',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: controller.searchPoliklinik,
                ),

                const SizedBox(height: 16),

                // LIST DOKTER
                Expanded(
                  child: Obx(() {
                    final list = controller.filteredList;

=======
          // ================= CONTENT =================
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 110, 16, 0),
            child: Column(
              children: [
                // SEARCH BAR
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari Dokter atau Poliklinik',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: controller.searchPoliklinik,
                  ),
                ),

                const SizedBox(height: 20),

                // ================= LIST DOKTER =================
                Expanded(
                  child: Obx(() {
                    // ================= LOADING =================
                    if (controller.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFF2E8BC0),
                        ),
                      );
                    }

                    final list = controller.filteredList;

                    if (list.isEmpty) {
                      return const Center(
                        child: Text(
                          "Tidak ada dokter tersedia",
                          style: TextStyle(
                            fontFamily: 'LexendExa',
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      );
                    }

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(bottom: 20),
                      itemCount: list.length,
                      itemBuilder: (_, index) {
                        final item = list[index];

                        return Container(
                          margin: const EdgeInsets.only(bottom: 18),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
<<<<<<< HEAD
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // info dokter
=======

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ================= INFO DOKTER =================
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
<<<<<<< HEAD
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
=======
                                    crossAxisAlignment: CrossAxisAlignment.start,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                    children: [
                                      Text(
                                        item.namaPoli,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2E8BC0),
                                          fontSize: 15,
                                          fontFamily: 'LexendExa',
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        item.namaDokter,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          fontSize: 13,
                                          fontFamily: 'LexendExa',
                                        ),
                                      ),
                                    ],
                                  ),
<<<<<<< HEAD
=======

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoutes.pendaftaranOnline);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF2E8BC0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text(
                                      'Reservasi',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        fontFamily: 'LexendExa',
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 14),

<<<<<<< HEAD
                              // jadwal
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 10),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF2E8BC0).withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: item.jadwal.keys.map((hari) {
                                    final jamList = item.jadwal[hari] ?? ['-'];
                                    final jam = jamList.join('\n');

                                    return Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.blueAccent
                                                .withOpacity(0.2),
                                          ),
                                        ),
                                        child: Column(
=======
                              // ================= JADWAL (RAPI & SCROLLABLE) =================
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2E8BC0).withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: item.jadwal.keys.map((hari) {
                                      final jam = item.jadwal[hari] ?? "-";

                                      return Container(
                                        width: 80,
                                        margin: const EdgeInsets.symmetric(horizontal: 6),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.blueAccent.withOpacity(0.25),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.05),
                                              blurRadius: 4,
                                              offset: const Offset(0, 2),
                                            )
                                          ],
                                        ),

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                          children: [
                                            Text(
                                              hari,
                                              style: const TextStyle(
<<<<<<< HEAD
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF2E8BC0),
                                                fontSize: 12,
                                                fontFamily: 'LexendExa',
                                              ),
                                            ),
                                            const SizedBox(height: 4),
=======
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF2E8BC0),
                                                fontFamily: 'LexendExa',
                                              ),
                                            ),
                                            const SizedBox(height: 6),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                            Text(
                                              jam,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 11,
<<<<<<< HEAD
                                                color: Colors.black54,
=======
                                                color: Colors.black87,
                                                height: 1.2,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                                fontFamily: 'LexendExa',
                                              ),
                                            ),
                                          ],
                                        ),
<<<<<<< HEAD
                                      ),
                                    );
                                  }).toList(),
=======
                                      );
                                    }).toList(),
                                  ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
