import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
<<<<<<< HEAD
=======
// Import halaman detail yang baru
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import 'layanan_detail_page.dart';

class LayananPage extends StatelessWidget {
  const LayananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final home = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.white,
<<<<<<< HEAD
=======

      // ==========================================================
      // HEADER
      // ==========================================================
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF1E88E5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 40,
            left: 16,
            right: 16,
            bottom: 20,
          ),
          child: Row(
<<<<<<< HEAD
            children: const [
              SizedBox(width: 10),
              Text(
=======
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back_ios,
                    color: Colors.white, size: 22),
              ),
              const SizedBox(width: 10),
              const Text(
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                "Paket Layanan",
                style: TextStyle(
                  fontFamily: 'LexendExa',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
<<<<<<< HEAD
=======

      // ==========================================================
      // BODY (Grid View)
      // ==========================================================
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      body: Obx(() {
        if (home.isLoadingLayanan.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (home.layananList.isEmpty) {
          return const Center(
            child: Text(
              "Belum ada layanan tersedia.",
              style: TextStyle(fontFamily: "LexendExa"),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: home.layananList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
<<<<<<< HEAD
=======
              // MODIFIKASI: Mengurangi rasio ke 0.70
              // Nilai yang LEBIH KECIL membuat tinggi kartu LEBIH BESAR (lebih panjang)
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
              childAspectRatio: 0.70,
            ),
            itemBuilder: (context, index) {
              final layanan = home.layananList[index];

              return _buildServiceCard(
                title: layanan.nama,
                subtitle: _cleanHtml(layanan.deskripsi),
                imageUrl: layanan.fotoUtama,
                price: int.tryParse(
                        layanan.harga.replaceAll(RegExp(r'[^0-9]'), '')) ??
                    0,
              );
            },
          ),
        );
      }),
    );
  }

<<<<<<< HEAD
=======
  // Bersihkan tag HTML
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  String _cleanHtml(String html) {
    final regex = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
    return html.replaceAll(regex, '').replaceAll('&nbsp;', ' ').trim();
  }

<<<<<<< HEAD
  // Format angka ke "Rp 150.000"
  String _formatPrice(int price) {
    if (price <= 0) return ""; // harga 0 → tidak tampil

    String number = price.toString();
    StringBuffer buffer = StringBuffer();
    int count = 0;

    // Sisipkan titik per 3 digit dari belakang
    for (int i = number.length - 1; i >= 0; i--) {
      buffer.write(number[i]);
      count++;
      if (count == 3 && i != 0) {
        buffer.write('.');
        count = 0;
      }
    }

    // Balik lagi
    String formatted = buffer.toString().split('').reversed.join();

    return "Rp $formatted";
  }

  // ==========================================================
  // CARD LAYANAN
=======
  // ==========================================================
  // CARD LAYANAN (Dibuat Lebih Panjang)
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  // ==========================================================
  Widget _buildServiceCard({
    required String title,
    required String subtitle,
    required String imageUrl,
    required int price,
  }) {
<<<<<<< HEAD
=======
    // Fungsi onTap akan dipanggil oleh GestureDetector terluar
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
    void navigateToDetail() {
      Get.to(
        () => LayananDetailPage(
          title: title,
          subtitle: subtitle,
          imageUrl: imageUrl,
          price: price,
        ),
      );
    }

<<<<<<< HEAD
    final formattedPrice = _formatPrice(price);

    return GestureDetector(
      onTap: navigateToDetail,
=======
    return GestureDetector(
      onTap: navigateToDetail, // Menggunakan seluruh kartu untuk navigasi
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
<<<<<<< HEAD
            padding: const EdgeInsets.all(12),
=======
            padding: const EdgeInsets.all(12), // Menggunakan padding standar
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.45),
                  Colors.white.withOpacity(0.22),
                  Colors.white.withOpacity(0.10),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(
                color: Colors.white.withOpacity(0.55),
                width: 1.1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.45),
                  blurRadius: 25,
                  spreadRadius: -10,
                  offset: const Offset(-6, -6),
                ),
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.22),
                  blurRadius: 40,
                  spreadRadius: 8,
                  offset: const Offset(6, 12),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
<<<<<<< HEAD
=======
                // Gambar
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    imageUrl,
<<<<<<< HEAD
                    height: 110,
=======
                    height: 110, // Menggunakan tinggi gambar standar
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
<<<<<<< HEAD

                const SizedBox(height: 10),

=======
                const SizedBox(height: 10), // Menggunakan spacing standar
                // Judul
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'LexendExa',
<<<<<<< HEAD
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

=======
                    fontSize: 14, // Menggunakan ukuran font standar
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6), // Menggunakan spacing standar
                // Subtitle (Deskripsi Singkat)
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'LexendExa',
<<<<<<< HEAD
                    fontSize: 11,
                    color: Colors.black54,
                  ),
                ),

                const Spacer(),

                // Harga + Tombol Detail
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Harga tampil hanya jika > 0
                    if (formattedPrice.isNotEmpty)
                      Text(
                        formattedPrice,
                        style: const TextStyle(
                          fontFamily: 'LexendExa',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent,
                        ),
                      ),

=======
                    fontSize: 11, // Menggunakan ukuran font standar
                    color: Colors.black54,
                  ),
                ),
                const Spacer(), // Memberikan ruang kosong

                // HARGA + TOMBOL DETAIL DALAM ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // HARGA (Kiri Bawah)
                    Text(
                      "Rp $price",
                      style: const TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 13, // Menggunakan ukuran font standar
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),

                    // TOMBOL DETAIL (Kanan Bawah)
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                    GestureDetector(
                      onTap: navigateToDetail,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
<<<<<<< HEAD
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E88E5),
=======
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E88E5), // Warna Biru
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Text(
                          "Detail",
                          style: TextStyle(
                            fontFamily: 'LexendExa',
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
