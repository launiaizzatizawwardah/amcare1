<<<<<<< HEAD
import 'dart:ui';
=======
import 'dart:async';
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home1_controller.dart';
import '../../controllers/home_controller.dart';
import '../../routes/app_routes.dart';

<<<<<<< HEAD
// PAGES TAB
import '../dummy_pages/riwayat_rekam_medis_page.dart';
import '../dummy_pages/layanan_page.dart';
import '../dummy_pages/profile_page.dart';

// WIDGET
import '../widget/menu_card.dart'; // (kalau nggak dipakai boleh dihapus)
import '../widget/service_card.dart'; // <- untuk tampilan Paket Layanan

=======
// TAB PAGES
import 'riwayat_rekam_medis_page1.dart';
import '../dummy_pages/layanan_page.dart';
import '../dummy_pages/profile_page.dart';

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Home1Controller());
    final home = Get.put(HomeController());
<<<<<<< HEAD
=======

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    final bottomPadding = MediaQuery.of(context).padding.bottom + 16;

    return Scaffold(
      backgroundColor: Colors.white,
<<<<<<< HEAD
=======

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      body: Obx(() {
        switch (c.selectedIndex.value) {
          case 0:
            return _beranda(context, bottomPadding, home);
          case 1:
<<<<<<< HEAD
            return const RiwayatRekamMedisPage();
=======
            return RiwayatRekamMedisPage1();
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          case 2:
            return const LayananPage();
          case 3:
            return const ProfilePage();
          default:
            return _beranda(context, bottomPadding, home);
        }
      }),
<<<<<<< HEAD
=======

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      bottomNavigationBar: _bottomNav(c),
    );
  }

  // =============================================================
<<<<<<< HEAD
  // BOTTOM NAV – style mirip HomePage, aksi tetap pakai Home1Controller
=======
  // BOTTOM NAV
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  // =============================================================
  Widget _bottomNav(Home1Controller c) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.all(16),
        height: 70,
        decoration: BoxDecoration(
<<<<<<< HEAD
          color: Colors.white,
=======
          color: Colors.white.withOpacity(0.60),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
<<<<<<< HEAD
              blurRadius: 10,
=======
              blurRadius: 12,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            final icons = [
              Icons.home_rounded,
              Icons.folder_shared_rounded,
              Icons.medical_services_rounded,
              Icons.person_rounded,
            ];

            final labels = [
              "Beranda",
              "Riwayat RM",
              "Layanan",
              "Akun",
            ];

            final active = c.selectedIndex.value == index;

            return InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () => c.changeTab(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
<<<<<<< HEAD
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
=======
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                decoration: BoxDecoration(
                  color: active ? Colors.blue.shade50 : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icons[index],
                      color: active ? Colors.blueAccent : Colors.grey,
<<<<<<< HEAD
                      size: active ? 28 : 24,
=======
                      size: active ? 28 : 23,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    ),
                    const SizedBox(height: 4),
                    Text(
                      labels[index],
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 11,
<<<<<<< HEAD
                        fontWeight:
                            active ? FontWeight.bold : FontWeight.normal,
=======
                        fontWeight: active ? FontWeight.bold : FontWeight.normal,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                        color: active ? Colors.blueAccent : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      );
    });
  }

  // =============================================================
<<<<<<< HEAD
  // BERANDA – layout mirip HomePage + Paket Layanan
=======
  // BERANDA
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  // =============================================================
  Widget _beranda(
      BuildContext context, double bottomPadding, HomeController home) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
<<<<<<< HEAD
        padding: EdgeInsets.fromLTRB(0, 0, 0, bottomPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER (logo + teks RS)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _header(),
            ),

            const SizedBox(height: 16),

            // WELCOME TEXT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _welcome(),
            ),

            const SizedBox(height: 16),

            // SLIDER PROMO
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: _slider(home),
            ),

            const SizedBox(height: 20),

            // MENU GRID
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildMenuContainer(),
            ),

            const SizedBox(height: 24),

            // PAKET LAYANAN (TAMBAHAN SEPERTI DI HomePage)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Paket Layanan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LexendExa',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Bisa diarahkan ke halaman semua paket layanan kalau mau
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Lihat semua',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Obx(() {
              if (home.isLoadingLayanan.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (home.layananList.isEmpty) {
                return const Center(
                    child: Text(
                  'Belum ada layanan tersedia.',
                  style: TextStyle(fontFamily: 'LexendExa'),
                ));
              }

              return SizedBox(
                height: 180, // sama seperti di HomePage
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: home.layananList.length,
                  itemBuilder: (context, index) {
                    final layanan = home.layananList[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 16 : 0,
                        right: 12,
                      ),
                      child: ServiceCard(
                        title: layanan.nama,
                        subtitle: layanan.deskripsi,
                        imageUrl: layanan.fotoUtama,
                        price: layanan.harga,
                      ),
                    );
                  },
                ),
              );
            }),

            const SizedBox(height: 16),
=======
        padding: EdgeInsets.fromLTRB(16, 16, 16, bottomPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            const SizedBox(height: 20),
            _welcome(),
            const SizedBox(height: 12),

            /// 🔥 SLIDER FINAL TANPA CROP + ZOOM + NO SPACE
            _sliderZoomAuto(home),

            const SizedBox(height: 30),
            _menuGrid(),
            const SizedBox(height: 26),
            _paketLayanan(home),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ],
        ),
      ),
    );
  }

  // =============================================================
<<<<<<< HEAD
  // HEADER – logo & teks RS
  // =============================================================
  Widget _header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo_rs.png', width: 35, height: 35),
=======
  // HEADER
  // =============================================================
  Widget _header() {
    return Row(
      children: [
        Image.asset('assets/images/logo_rs.png', width: 40, height: 40),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        const SizedBox(width: 8),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('AMCare',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LexendExa',
                  )),
              Text('Layanan antrian online',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black54,
                    fontFamily: 'LexendExa',
                  )),
              Text('Asri Medical Center Yogyakarta',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black54,
                    fontFamily: 'LexendExa',
                  )),
            ],
          ),
        ),
        const Icon(Icons.support_agent, size: 28, color: Colors.black87),
=======
            children: [
              Text('AMCare',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LexendExa')),
              Text('Layanan antrian online',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontFamily: 'LexendExa')),
              Text('Asri Medical Center Yogyakarta',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontFamily: 'LexendExa')),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(AppRoutes.emergency),
          child: const Icon(Icons.support_agent,
              size: 28, color: Colors.black87),
        )
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      ],
    );
  }

  Widget _welcome() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
<<<<<<< HEAD
          'Halo!',
          style: TextStyle(
            fontSize: 20,
=======
          "Halo!",
          style: TextStyle(
            fontSize: 22,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            fontWeight: FontWeight.bold,
            fontFamily: 'LexendExa',
          ),
        ),
        SizedBox(height: 2),
        Text(
<<<<<<< HEAD
          'Selamat Datang di AmCare',
=======
          "Selamat Datang di AmCare",
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
            fontFamily: 'LexendExa',
          ),
        ),
      ],
    );
  }

  // =============================================================
<<<<<<< HEAD
  // SLIDER PROMOSI
  // =============================================================
  Widget _slider(HomeController home) {
    final PageController pc = PageController(
      viewportFraction: 0.85,
      initialPage: 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 4), () async {
        if (pc.hasClients && home.sliders.isNotEmpty) {
          pc.nextPage(
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeInOut,
          );
        }
      });
=======
  // SLIDER AUTO + ZOOM + TIDAK CROP + NO SPACE ATAS/BWH
  // =============================================================
  Widget _sliderZoomAuto(HomeController home) {
    final pc = PageController(viewportFraction: 0.92);

    // AUTOPLAY
    Timer.periodic(const Duration(seconds: 4), (_) {
      if (pc.hasClients && home.sliders.isNotEmpty) {
        final next = ((pc.page ?? 0).toInt() + 1) % home.sliders.length;
        pc.animateToPage(next,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOut);
      }
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    });

    return Obx(() {
      if (home.isLoadingSlider.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (home.sliders.isEmpty) {
<<<<<<< HEAD
        return const Center(child: Text('Belum ada promosi tersedia.'));
      }

      return SizedBox(
        height: 150,
        child: PageView.builder(
          controller: pc,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final realIndex = index % home.sliders.length;

            return AnimatedBuilder(
              animation: pc,
              builder: (context, child) {
                double value = 1.0;
                if (pc.position.haveDimensions) {
                  value = (1 - (pc.page! - index).abs()).clamp(0.0, 1.0);
                }
                return Transform.scale(
                  scale: 0.93 + (value * 0.07),
                  child: child,
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    home.sliders[realIndex].foto,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.image_not_supported),
                    ),
                  ),
                ),
=======
        return const Center(child: Text("Belum ada promosi tersedia."));
      }

      return LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = width * 0.55; // Rasio otomatis → NO SPACE

        return SizedBox(
          width: width,
          height: height,
          child: PageView.builder(
            controller: pc,
            physics: const BouncingScrollPhysics(),
            itemCount: home.sliders.length,
            itemBuilder: (_, index) {
              double scale = 1;

              if (pc.position.hasPixels) {
                final page = pc.page ?? 0;
                final dist = (page - index).abs();
                scale = (1 - dist * 0.20).clamp(0.90, 1.0); // zoom
              }

              final slider = home.sliders[index];

              return Transform.scale(
                scale: scale,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    slider.foto,
                    width: width,
                    height: height,
                    fit: BoxFit.contain, // 🔥 NO CROP
                    errorBuilder: (_, __, ___) =>
                        Container(color: Colors.grey.shade300),
                  ),
                ),
              );
            },
          ),
        );
      });
    });
  }

  // =============================================================
  // MENU GRID
  // =============================================================
  Widget _menuGrid() {
    final items = [
      ["assets/images/pendaftaran.png", "Pendaftaran\nOnline", AppRoutes.pendaftaranOnline],
      ["assets/images/rekam_medis.png", "Riwayat\nRekam Medis", AppRoutes.riwayatRekamMedis],
      ["assets/images/antrian.png", "Pemantauan\nAntrian", AppRoutes.pemantauanAntrian],
      ["assets/images/jadwal.png", "Jadwal\nDokter", AppRoutes.jadwalDokter],
      ["assets/images/klinik.png", "Nama\nKlinik", AppRoutes.namaKlinik],
      ["assets/images/tempat_tidur.png", "Tempat Tidur\nTersedia", AppRoutes.tempatTidur],
      ["assets/images/farmasi.png", "Antrian\nFarmasi", AppRoutes.antrianFarmasi],
      ["assets/images/emergency.png", "Emergency", AppRoutes.emergency],
    ];

    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final crossAxisCount = 4;
      final spacing = 12.0;
      final itemWidth =
          (screenWidth - (crossAxisCount - 1) * spacing) / crossAxisCount;

      return Wrap(
        spacing: spacing,
        runSpacing: 20,
        children: items
            .map((item) => SizedBox(
                  width: itemWidth,
                  child: _menuItemClassic(item[0], item[1], item[2]),
                ))
            .toList(),
      );
    });
  }

  Widget _menuItemClassic(String img, String title, dynamic route) {
    return InkWell(
      onTap: () => Get.toNamed(route as String),
      borderRadius: BorderRadius.circular(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF2F6FA),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  offset: const Offset(1, 2),
                ),
              ],
            ),
            child: Image.asset(img, width: 36, height: 36),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'LexendExa',
              fontSize: 11,
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // =============================================================
  // PAKET LAYANAN
  // =============================================================
  Widget _paketLayanan(HomeController home) {
    return Obx(() {
      if (home.isLoadingLayanan.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (home.layananList.isEmpty) {
        return const Text("Belum ada layanan tersedia.");
      }

      return SizedBox(
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: home.layananList.length,
          itemBuilder: (_, i) {
            final l = home.layananList[i];
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(18)),
                      child: Image.network(
                        l.fotoUtama,
                        height: 90,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        l.nama,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'LexendExa',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              ),
            );
          },
        ),
      );
    });
  }
<<<<<<< HEAD

  // =============================================================
  // MENU GRID – card putih + grid 4 kolom
  // =============================================================
  Widget _buildMenuContainer() {
    final items = [
      [
        "assets/images/pendaftaran.png",
        "Pendaftaran\nOnline",
        AppRoutes.pendaftaranOnline
      ],
      [
        "assets/images/rekam_medis.png",
        "Riwayat\nRekam Medis",
        AppRoutes.riwayatRekamMedis
      ],
      [
        "assets/images/antrian.png",
        "Pemantauan\nAntrian",
        AppRoutes.pemantauanAntrian
      ],
      ["assets/images/jadwal.png", "Jadwal\nDokter", AppRoutes.jadwalDokter],
      ["assets/images/klinik.png", "Nama\nKlinik", AppRoutes.namaKlinik],
      [
        "assets/images/tempat_tidur.png",
        "Tempat Tidur\nTersedia",
        AppRoutes.tempatTidur
      ],
      [
        "assets/images/farmasi.png",
        "Antrian\nFarmasi",
        AppRoutes.antrianFarmasi
      ],
      ["assets/images/emergency.png", "Emergency", AppRoutes.emergency],
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          final item = items[index];
          return _menuItem(item[0], item[1], item[2]);
        },
      ),
    );
  }

  // =============================================================
  // ITEM GRID – aksi tetap: Get.toNamed(route)
  // =============================================================
  Widget _menuItem(String img, String title, String route) {
    return InkWell(
      onTap: () => Get.toNamed(route),
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(img, width: 40, height: 40),
          ),
          const SizedBox(height: 6),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'LexendExa',
                fontSize: 11,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
}
