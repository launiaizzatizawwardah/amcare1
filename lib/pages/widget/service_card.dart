<<<<<<< HEAD
// File: ./widget/service_card.dart (Revisi Akhir untuk Tinggi)

=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
<<<<<<< HEAD
  final String? imageUrl;
=======
  final String? imageUrl; // 🔹 tambahan opsional
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
<<<<<<< HEAD
    this.imageUrl,
  });

  String _cleanHtmlTags(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>'), '').trim();
  }

=======
    this.imageUrl, // 🔹 tambahan opsional
  });

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
<<<<<<< HEAD
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
=======
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
<<<<<<< HEAD
          // 🔹 Bagian Gambar Layanan
          if (imageUrl != null && imageUrl!.isNotEmpty)
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                imageUrl!,
                height: 80, // Tinggi gambar dikunci
=======
          // 🔹 tampilkan gambar dari API kalau ada
          if (imageUrl != null && imageUrl!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl!,
                height: 80,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 80,
                  color: Colors.grey.shade200,
<<<<<<< HEAD
                  child: const Center(
                    child:
                        Icon(Icons.broken_image, color: Colors.grey, size: 30),
                  ),
                ),
              ),
            ),

          // 🔹 Bagian Konten Teks dan Harga
          Expanded(
            // ⭐ Gunakan Expanded di sini agar sisa ruang dihabiskan
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Distribusi ruang vertikal
                children: [
                  // Judul & Subtitle
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          height: 1.2,
                        ),
                        maxLines: 1, // Judul 1 baris
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _cleanHtmlTags(subtitle),
                        style: const TextStyle(
                          fontSize: 10,
                          height: 1.2,
                          color: Colors.black54,
                        ),
                        maxLines: 2, // Subtitle 2 baris
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  // Harga
                  Text(
                    price == '0' ? 'Gratis' : 'Rp $price',
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
=======
                  child: const Icon(Icons.broken_image, color: Colors.grey),
                ),
              ),
            ),
          if (imageUrl != null && imageUrl!.isNotEmpty)
            const SizedBox(height: 6),

          // 🔹 teks nama layanan
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          // 🔹 teks deskripsi
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const Spacer(),

          // 🔹 harga
          Text(
            price == '0' ? 'Gratis' : 'Rp $price',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            ),
          ),
        ],
      ),
    );
  }
}
