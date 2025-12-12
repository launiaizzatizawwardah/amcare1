// File: home_page.dart

<<<<<<< HEAD
=======
import 'dart:async';
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../../controllers/home_controller.dart';
import '../../routes/app_routes.dart';
<<<<<<< HEAD
import './widget/service_card.dart'; // ServiceCard yang sudah diperbaiki
=======
import './widget/service_card.dart';
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

<<<<<<< HEAD
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
=======
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  late final AuthController authController;
  late final HomeController homeController;

  late final AnimationController _animController;
  late final Animation<Offset> _headerSlide;
  late final Animation<double> _headerFade;
  late final Animation<Offset> _bannerSlide;
  late final Animation<double> _bannerFade;
  late final Animation<Offset> _menuSlide;
  late final Animation<double> _menuFade;
  late final Animation<Offset> _bottomNavSlide;

<<<<<<< HEAD
  // PageController untuk Slider
  late final PageController _pageController;
  final int _initialPage = 1000;
  bool _isPageAnimating = false;
=======
  // PageController untuk slider
  late final PageController _pageController;
  Timer? _sliderTimer;
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  int _currentSliderIndex = 0;

  int _selectedBottomIndex = 0;

  @override
  void initState() {
    super.initState();

    authController = Get.find<AuthController>();
    homeController = Get.put(HomeController());

<<<<<<< HEAD
    _pageController = PageController(
      viewportFraction: 0.85,
      initialPage: _initialPage,
    );
    _pageController.addListener(_pageListener);

=======
    _pageController = PageController(viewportFraction: 0.85);

    /// TIMER AUTOPLAY BARU
    _sliderTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (_pageController.hasClients && homeController.sliders.isNotEmpty) {
        final nextPage = (_pageController.page ?? 0).toInt() + 1;
        _pageController.animateToPage(
          nextPage % homeController.sliders.length,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeOut,
        );
      }
    });

    // ANIMASI HEADER, BANNER, MENU, NAVBAR
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

<<<<<<< HEAD
    // --- Inisialisasi Animasi ---
    _headerSlide = Tween<Offset>(
      begin: const Offset(0, -0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeOut),
      ),
    );
    _headerFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeOut),
      ),
    );
    _bannerSlide = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.2, 0.55, curve: Curves.easeOut),
      ),
    );
    _bannerFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.25, 0.6, curve: Curves.easeOut),
      ),
    );
    _menuSlide = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.4, 0.9, curve: Curves.easeOutCubic),
      ),
    );
    _menuFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.45, 0.95, curve: Curves.easeOut),
      ),
    );
    _bottomNavSlide = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animController,
        curve: const Interval(0.6, 1.0, curve: Curves.easeOutCubic),
      ),
    );

    _animController.forward();
    _startAutoplay();
  }

  void _pageListener() {
    int? newIndex = _pageController.page?.round();
    if (newIndex != null && homeController.sliders.isNotEmpty) {
      if (newIndex % homeController.sliders.length != _currentSliderIndex) {
        setState(() {
          _currentSliderIndex = newIndex % homeController.sliders.length;
        });
      }
    }
  }

  void _startAutoplay() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      Future.delayed(const Duration(seconds: 4), () async {
        if (!mounted) return;

        if (_pageController.hasClients && homeController.sliders.isNotEmpty) {
          if (!_isPageAnimating) {
            _isPageAnimating = true;
            _pageController
                .nextPage(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInOut,
            )
                .then((_) {
              if (mounted) {
                _isPageAnimating = false;
                _startAutoplay();
              }
            });
          } else {
            Future.delayed(
                const Duration(milliseconds: 500), () => _startAutoplay());
          }
        } else {
          Future.delayed(
              const Duration(milliseconds: 500), () => _startAutoplay());
        }
      });
    });
=======
    _headerSlide = Tween(begin: const Offset(0, -0.2), end: Offset.zero)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.0, 0.35)));
    _headerFade = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.0, 0.35)));

    _bannerSlide = Tween(begin: const Offset(0, 0.15), end: Offset.zero)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.2, 0.55)));
    _bannerFade = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.25, 0.6)));

    _menuSlide = Tween(begin: const Offset(0, 0.2), end: Offset.zero)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.4, 0.9)));
    _menuFade = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.45, 0.95)));

    _bottomNavSlide = Tween(begin: const Offset(0, 1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _animController, curve: const Interval(0.6, 1.0)));

    _animController.forward();
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  }

  @override
  void dispose() {
<<<<<<< HEAD
    _animController.dispose();
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
=======
    _sliderTimer?.cancel();
    _pageController.dispose();
    _animController.dispose();
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // Menghitung padding yang dibutuhkan di bagian bawah konten untuk floating nav
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    final bottomPaddingForContent = MediaQuery.of(context).padding.bottom + 80;

    return Scaffold(
      backgroundColor: Colors.white,

<<<<<<< HEAD
      // ===================== APPBAR =====================
=======
      //------------------------------------------------------- APP BAR
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
<<<<<<< HEAD
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_rs.png', width: 35, height: 35),
                const SizedBox(width: 8),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AMCare',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'LexendExa',
                          )),
                      Text('Layanan antrian online',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 11,
                              fontFamily: 'LexendExa')),
                      Text('Asri Medical Center Yogyakarta',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 11,
                              fontFamily: 'LexendExa')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.support_agent,
                    color: Colors.black87, size: 28),
                onPressed: () {}),
            const SizedBox(width: 8),
=======
          title: Row(
            children: [
              Image.asset('assets/images/logo_rs.png', width: 35, height: 35),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AMCare',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'LexendExa')),
                    Text('Layanan antrian online',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontFamily: 'LexendExa')),
                    Text('Asri Medical Center Yogyakarta',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontFamily: 'LexendExa')),
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.support_agent, color: Colors.black87, size: 28),
            SizedBox(width: 8),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ],
        ),
      ),

<<<<<<< HEAD
      // ===================== BODY =====================
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
=======
      //------------------------------------------------------- BODY
      body: SingleChildScrollView(
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        padding: EdgeInsets.fromLTRB(0, 0, 0, bottomPaddingForContent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
<<<<<<< HEAD
            // ---------- HEADER (Halo + tombol daftar) ----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
=======
            //------------------------------------------------ HEADER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              child: FadeTransition(
                opacity: _headerFade,
                child: SlideTransition(
                  position: _headerSlide,
<<<<<<< HEAD
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 16, left: 4, right: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Halo!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'LexendExa',
                                  )),
                              SizedBox(height: 2),
                              Text('Selamat Datang di AmCare',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontFamily: 'LexendExa',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 16,
                        child: ElevatedButton(
                          onPressed: () => Get.toNamed(AppRoutes.login),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Daftar Sekarang!',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
=======
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Halo!',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'LexendExa')),
                          SizedBox(height: 2),
                          Text('Selamat Datang di AmCare',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontFamily: 'LexendExa')),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () => Get.toNamed(AppRoutes.login),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: const Text('Daftar Sekarang!',
                            style: TextStyle(
                                color: Colors.white, fontSize: 14)),
                      )
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

<<<<<<< HEAD
            // ---------- ⭐ BANNER PROMO (Parallax Scale dan Sisi Terlihat) ⭐ ----------
=======
            //------------------------------------------------------- SLIDER PROMOSI
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            FadeTransition(
              opacity: _bannerFade,
              child: SlideTransition(
                position: _bannerSlide,
                child: Obx(() {
                  if (homeController.isLoadingSlider.value) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (homeController.sliders.isEmpty) {
<<<<<<< HEAD
                    return const Center(
                        child: Text('Belum ada promosi tersedia.'));
                  }

                  return Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: homeController.sliders.length * 1000,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final realIndex =
                                index % homeController.sliders.length;
                            final slider = homeController.sliders[realIndex];

                            double scale = 1.0;
                            // Logika Parallax Scale
                            if (_pageController.position.hasPixels) {
                              final page = _pageController.page ?? 0.0;
                              final distance = (page - index).abs();
                              scale = (1 - distance * 0.07).clamp(0.93, 1.0);
                            }

                            return AnimatedBuilder(
                              animation: _pageController,
                              builder: (context, child) {
                                double animatedScale = scale;
                                if (_pageController.position.hasPixels) {
                                  final page = _pageController.page ?? 0.0;
                                  final distance = (page - index).abs();
                                  animatedScale =
                                      (1 - distance * 0.07).clamp(0.93, 1.0);
                                }
                                return Transform.scale(
                                  scale: animatedScale,
                                  child: child,
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    slider.foto,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Container(
                                      color: Colors.grey.shade200,
                                      child:
                                          const Icon(Icons.image_not_supported),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // DOT INDICATOR DIHILANGKAN
                    ],
=======
                    return const Center(child: Text("Belum ada promosi tersedia."));
                  }

                  return SizedBox(
                    height: 160,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: homeController.sliders.length,
                      itemBuilder: (context, index) {
                        double scale = 1.0;

                        if (_pageController.position.hasPixels) {
                          final page = _pageController.page ?? 0;
                          final distance = (page - index).abs();
                          scale = (1 - distance * 0.25).clamp(0.82, 1.0);
                        }

                        final slider = homeController.sliders[index];

                        return Transform.scale(
                          scale: scale,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                slider.foto,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                    color: Colors.grey.shade300,
                                    child: const Icon(Icons.broken_image)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                  );
                }),
              ),
            ),

            const SizedBox(height: 20),

<<<<<<< HEAD
            // ---------- MENU GRID (Sesuai Gambar) ----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: FadeTransition(
                opacity: _menuFade,
                child: SlideTransition(
                  position: _menuSlide,
                  child: Container(
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
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        final menuItems = [
                          _buildMenuItem(
                            index: 0,
                            imagePath: 'assets/images/pendaftaran.png',
                            title: 'Pendaftaran\nOnline',
                            route: AppRoutes.pendaftaranOnline,
                          ),
                          _buildMenuItem(
                            index: 1,
                            imagePath: 'assets/images/rekam_medis.png',
                            title: 'Riwayat\nRekam Medis',
                            route: AppRoutes.riwayatRekamMedis,
                          ),
                          _buildMenuItem(
                            index: 2,
                            imagePath: 'assets/images/antrian.png',
                            title: 'Pemantauan\nAntrian',
                            route: AppRoutes.pemantauanAntrian,
                          ),
                          _buildMenuItem(
                            index: 3,
                            imagePath: 'assets/images/jadwal.png',
                            title: 'Jadwal\nDokter',
                            route: AppRoutes.jadwalDokter,
                          ),
                          _buildMenuItem(
                            index: 4,
                            imagePath: 'assets/images/klinik.png',
                            title: 'Nama\nKlinik',
                            route: AppRoutes.namaKlinik,
                          ),
                          _buildMenuItem(
                            index: 5,
                            imagePath: 'assets/images/tempat_tidur.png',
                            title: 'Tempat Tidur\nTersedia',
                            route: AppRoutes.tempatTidur,
                          ),
                          _buildMenuItem(
                            index: 6,
                            imagePath: 'assets/images/farmasi.png',
                            title: 'Antrian\nFarmasi',
                            route: AppRoutes.antrianFarmasi,
                          ),
                          _buildMenuItem(
                            index: 7,
                            imagePath: 'assets/images/emergency.png',
                            title: 'Emergency',
                            route: AppRoutes.emergency,
                          ),
                        ];
                        return menuItems[index];
                      },
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ---------- PAKET LAYANAN (DIPERTAHANKAN dan DIKOREKSI) ----------
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
                      // Navigasi ke halaman "Lihat Semua Paket Layanan"
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
            // ListView horizontal untuk ServiceCard
            Obx(() {
              if (homeController.isLoadingLayanan.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (homeController.layananList.isEmpty) {
                return const Center(child: Text('Belum ada layanan tersedia.'));
              }
              // ⭐ Mengubah tinggi menjadi 180 untuk memberi ruang pada ServiceCard yang lebih tinggi
              return SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: homeController.layananList.length,
                  itemBuilder: (context, index) {
                    final layanan = homeController.layananList[index];
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
=======
            //------------------------------------------------------- MENU GRID (BARU)
            _buildMenuGrid(),

            const SizedBox(height: 24),

            //------------------------------------------------------- PAKET LAYANAN
            _buildPaketLayanan(),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ],
        ),
      ),

<<<<<<< HEAD
      // ===================== FLOATING BOTTOM NAV (STYLE ASLI) =====================
      bottomNavigationBar: SlideTransition(
        position: _bottomNavSlide,
        child: Container(
          margin: const EdgeInsets.all(16),
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              final items = [
                {'icon': Icons.home_rounded, 'label': 'Beranda'},
                {'icon': Icons.folder_shared_rounded, 'label': 'Riwayat RM'},
                {'icon': Icons.medical_services_rounded, 'label': 'Layanan'},
                {'icon': Icons.person_rounded, 'label': 'Akun'},
              ];

              final item = items[index];
              final isActive = _selectedBottomIndex == index;

              return GestureDetector(
                onTap: () {
                  if (!authController.isLoggedIn.value && index != 0) {
                    setState(() => _selectedBottomIndex = 0);
                    Get.snackbar(
                      'Perlu Login',
                      'Silakan login dulu untuk mengakses menu ini',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    Get.toNamed(AppRoutes.login);
                  } else {
                    setState(() => _selectedBottomIndex = index);
                  }
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: isActive ? Colors.blue.shade50 : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        color: isActive ? Colors.blueAccent : Colors.grey,
                        size: isActive ? 28 : 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['label'] as String,
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          fontSize: 11,
                          fontWeight:
                              isActive ? FontWeight.bold : FontWeight.normal,
                          color: isActive ? Colors.blueAccent : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  // ===================== MENU ITEM + STAGGER ANIM =====================
  Widget _buildMenuItem({
    required int index,
    required String imagePath,
    required String title,
    required String route,
  }) {
    final delay = 80 * index;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 500 + delay),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 20),
            child: Transform.scale(
              scale: 0.9 + (value * 0.1),
              child: child,
            ),
          ),
        );
      },
      child: InkWell(
        onTap: () {
          if (authController.isLoggedIn.value) {
            Get.toNamed(route);
          } else {
            Get.snackbar(
              'Perlu Login',
              'Silakan login dulu untuk mengakses fitur ini',
              snackPosition: SnackPosition.BOTTOM,
            );
            Get.toNamed(AppRoutes.login);
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(imagePath, width: 40, height: 40),
            ),
            const SizedBox(height: 6),
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LexendExa',
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
=======
      //------------------------------------------------------- BOTTOM NAV
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // ================================================================
  // MENU GRID (SAMA PERSIS HOMEPAGE1)
  // ================================================================
  Widget _buildMenuGrid() {
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FadeTransition(
        opacity: _menuFade,
        child: SlideTransition(
          position: _menuSlide,
          child: Container(
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                final screenWidth = constraints.maxWidth;
                final crossAxisCount = 4;
                final spacing = 12.0;
                final itemWidth =
                    (screenWidth - (crossAxisCount - 1) * spacing) / crossAxisCount;

                return Wrap(
                  spacing: spacing,
                  runSpacing: 20,
                  children: items.map((item) {
                    return SizedBox(
                      width: itemWidth,
                      child: _menuItemClassic(item[0], item[1], item[2]),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // ================================================================
  // ITEM GRID MENU
  // ================================================================
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

  // ==========================================================
  // BOTTOM NAV (TIDAK DIUBAH)
  // ==========================================================
  Widget _buildBottomNavBar() {
    return SlideTransition(
      position: _bottomNavSlide,
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            final items = [
              {'icon': Icons.home_rounded, 'label': 'Beranda'},
              {'icon': Icons.folder_shared_rounded, 'label': 'Riwayat RM'},
              {'icon': Icons.medical_services_rounded, 'label': 'Layanan'},
              {'icon': Icons.person_rounded, 'label': 'Akun'},
            ];

            final isActive = _selectedBottomIndex == index;

            return GestureDetector(
              onTap: () {
                if (!authController.isLoggedIn.value && index != 0) {
                  setState(() => _selectedBottomIndex = 0);
                  Get.snackbar('Perlu Login',
                      'Silakan login dulu untuk mengakses menu ini',
                      snackPosition: SnackPosition.BOTTOM);
                  Get.toNamed(AppRoutes.login);
                } else {
                  setState(() => _selectedBottomIndex = index);
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: isActive ? Colors.blue.shade50 : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(items[index]['icon'] as IconData,
                        color: isActive ? Colors.blueAccent : Colors.grey,
                        size: isActive ? 28 : 24),
                    const SizedBox(height: 4),
                    Text(
                      items[index]['label'] as String,
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 11,
                        fontWeight:
                            isActive ? FontWeight.bold : FontWeight.normal,
                        color: isActive ? Colors.blueAccent : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  // ==========================================================
  // PAKET LAYANAN (TIDAK DIUBAH)
  // ==========================================================
  Widget _buildPaketLayanan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //----------------------------------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Paket Layanan',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LexendExa')),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, minimumSize: Size.zero),
                child: const Text('Lihat semua',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontFamily: 'LexendExa')),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        //----------------------------------------
        Obx(() {
          if (homeController.isLoadingLayanan.value) {
            return const Center(child: CircularProgressIndicator());
          }
          if (homeController.layananList.isEmpty) {
            return const Center(child: Text("Belum ada layanan tersedia."));
          }

          return SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: homeController.layananList.length,
              itemBuilder: (context, index) {
                final layanan = homeController.layananList[index];
                return Padding(
                  padding:
                      EdgeInsets.only(left: index == 0 ? 16 : 0, right: 12),
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
      ],
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    );
  }
}
