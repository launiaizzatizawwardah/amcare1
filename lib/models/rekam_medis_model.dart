<<<<<<< HEAD
// ==========================================================
// 🔹 MODEL DATA REKAM MEDIS (SUDAH DIBERSIHKAN)
// ==========================================================

class RekamMedisItem {
  final String poli;
  final String dokter;
  final String keluhan;
  final String diagnosa;
  final String tanggal;
  final String catatan;

  RekamMedisItem({
    required this.poli,
    required this.dokter,
    required this.keluhan,
    required this.diagnosa,
    required this.tanggal,
    required this.catatan,
  });
}

// ==========================================================
// 🔹 DATA DUMMY UNTUK UJI COBA (SUDAH DIBERSIHKAN)
// ==========================================================

List<RekamMedisItem> dummyRekamMedis = [
  RekamMedisItem(
    poli: 'Poli Umum',
    dokter: 'dr. Syahrizal Arubusman Hidayat, MARS',
    keluhan: 'Demam dan batuk',
    diagnosa: 'Flu Biasa',
    tanggal: '15 Oktober 2024',
    catatan: 'Istirahat cukup, banyak minum air putih',
  ),
  RekamMedisItem(
    poli: 'Poli Umum',
    dokter: 'dr. Syahrizal Arubusman Hidayat, MARS',
    keluhan: 'Sakit kepala dan pilek',
    diagnosa:
        'Flu Ringan sakit perut suka yapping pusing kebanyakan tugas abcdefghijklmnopqrstuvwxyz apalagi ya biar panjang diagnosanya',
    tanggal: '10 Oktober 2024',
    catatan: 'Kontrol 3 hari lagi jika belum membaik',
  ),
  RekamMedisItem(
    poli: 'Poli Gigi',
    dokter: 'drg. Rina Sari',
    keluhan: 'Gigi berlubang',
    diagnosa: 'Karies gigi',
    tanggal: '05 Oktober 2024',
    catatan: 'Sudah membaik, lanjutkan istirahat',
  ),
  RekamMedisItem(
    poli: 'Poli Anak',
    dokter: 'dr. Rudi Hartono, SpA',
    keluhan: 'Demam ringan pada anak',
    diagnosa: 'Infeksi virus ringan',
    tanggal: '28 September 2024',
    catatan: 'Check-up rutin, kondisi sehat',
  ),
];
=======
class RekamMedisItem {
  final String tanggal;
  final String poli;
  final String dokter;
  final String diagnosa;

  RekamMedisItem({
    required this.tanggal,
    required this.poli,
    required this.dokter,
    required this.diagnosa,
  });

  factory RekamMedisItem.fromJson(Map<String, dynamic> json) {
    return RekamMedisItem(
      tanggal: json["tanggal"] ?? "-",
      poli: json["poli"] ?? "-",
      dokter: json["dokter"] ?? "-",
      diagnosa: json["diagnosa"] ?? "-",
    );
  }
}
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
