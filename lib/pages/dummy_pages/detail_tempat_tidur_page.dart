<<<<<<< HEAD
// lib/pages/dummy_pages/detail_tempat_tidur_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailTempatTidurPage extends StatefulWidget {
  const DetailTempatTidurPage({super.key});

  @override
  State<DetailTempatTidurPage> createState() => _DetailTempatTidurPageState();
}

class _DetailTempatTidurPageState extends State<DetailTempatTidurPage> {
  final PageController _pageController = PageController(viewportFraction: 0.92);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim via Get.arguments (aman kalau null)
    final Map<String, dynamic> data = (Get.arguments is Map<String, dynamic>)
        ? Get.arguments
        : <String, dynamic>{'nama': 'Kelas 1', 'tersedia': 0, 'kapasitas': 0};

    final String nama = (data['nama'] ?? 'Kelas 1').toString();
    final List<String> gambarList = List<String>.from(data['gambar'] ??
        [
          // fallback gambar kalau arguments tidak membawa gambar
          'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1576678927484-cc907957088c?auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1582719478145-fd9cc5e3f3a1?auto=format&fit=crop&w=800&q=60',
        ]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF284E7A)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          nama,
          style: const TextStyle(
            color: Color(0xFF284E7A),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // IMAGE SLIDER (PageView)
            SizedBox(
              height: 220,
              child: PageView.builder(
                controller: _pageController,
                itemCount: gambarList.length,
                onPageChanged: (i) => setState(() => _currentIndex = i),
                itemBuilder: (context, index) {
                  final url = gambarList[index];
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 260),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

            // DOT INDICATOR MANUAL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(gambarList.length, (i) {
                final bool active = i == _currentIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: active ? 12 : 8,
                  height: active ? 12 : 8,
                  decoration: BoxDecoration(
                    color: active ? const Color(0xFF284E7A) : Colors.black12,
                    borderRadius: BorderRadius.circular(6),
                  ),
                );
              }),
=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/models/tempat_tidur_model.dart';

class DetailTempatTidurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TempatTidurModel item = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E8BC0),
        title: const Text(
          "Detail Tempat Tidur",
          style: TextStyle(fontFamily: 'LexendExa'),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
                image: item.gambar != null
                    ? DecorationImage(
                        image: NetworkImage(item.gambar!),
                        fit: BoxFit.cover)
                    : const DecorationImage(
                        image: AssetImage("assets/images/default-room.jpg"),
                        fit: BoxFit.cover),
              ),
            ),

            Text(
              item.namaRuang,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'LexendExa',
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E8BC0),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                item.deskripsi ?? "Tidak ada deskripsi",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontFamily: 'LexendExa',
                ),
              ),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            ),

            const SizedBox(height: 20),

<<<<<<< HEAD
            // DETAIL BLOCK (PUTIH)
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.12),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF284E7A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Tersedia: ${data['tersedia'] ?? '-'} / ${data['kapasitas'] ?? '-'}",
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 1, color: Colors.black12),
                  const SizedBox(height: 12),
                  const Text(
                    "Fasilitas:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF284E7A),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "- Tempat tidur nyaman & linen bersih\n"
                    "- Kamar mandi dalam\n"
                    "- TV & lemari\n"
                    "- AC & Wi-Fi\n"
                    "- Layanan perawat 24 jam",
                    style: TextStyle(color: Colors.black87, height: 1.6),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    "Harga Per Malam",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF284E7A),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    (nama.toLowerCase().contains('orchid') ||
                            nama.toLowerCase().contains('vip'))
                        ? 'Rp 1.500.000'
                        : (nama.toLowerCase().contains('kelas 1')
                            ? 'Rp 750.000'
                            : 'Rp 450.000'),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                ],
              ),
            ),
=======
            _infoCard("Kapasitas", item.kapasitas),
            _infoCard("Tersedia", item.tersedia),
            _infoCard("Tanggal Update", item.tgl),
            _infoCard("Jam Update", item.jam),

            const SizedBox(height: 20),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
=======

  Widget _infoCard(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(
                fontFamily: 'LexendExa',
                color: Colors.black54,
              )),
          Text(value,
              style: const TextStyle(
                fontFamily: 'LexendExa',
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E8BC0),
              )),
        ],
      ),
    );
  }
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
}
