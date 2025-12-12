<<<<<<< HEAD
import 'package:get/get.dart';
import '../models/poliklinik_model.dart';

class PoliklinikController extends GetxController {
  // List utama (dummy)
  final listPoliklinik = <Poliklinik>[
    Poliklinik(
      namaPoli: 'Poli Umum',
      namaDokter: 'dr. Syahrizal',
      jadwal: {
        'Senin': ['08:00', '10:00'],
        'Selasa': ['09:00', '11:00']
      },
    ),
    Poliklinik(
      namaPoli: 'Poli Anak',
      namaDokter: 'dr. Anita',
      jadwal: {
        'Senin': ['08:00'],
        'Rabu': ['09:00']
      },
    ),
    Poliklinik(
      namaPoli: 'Poli Gigi',
      namaDokter: 'drg. Rina',
      jadwal: {
        'Kamis': ['10:00'],
        'Jumat': ['12:00']
      },
    ),
  ].obs;

  // List yang akan ditampilkan
  var filteredList = <Poliklinik>[].obs;
=======
import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../models/dokter_model.dart';

class PoliklinikController extends GetxController {
  final baseUrl = "http://172.16.24.49:7100/api";
  final box = GetStorage();

  RxBool isLoading = false.obs;

  RxList<DokterModel> dokterList = <DokterModel>[].obs;
  RxList<DokterModel> filteredList = <DokterModel>[].obs;

  // =============================================================
  // 🔥 MAPPING PENAMAAN POLI UI -> API
  // =============================================================
  final Map<String, String> poliMapping = {
    "Klinik Penyakit Dalam": "Penyakit Dalam",
    "Klinik Jantung": "Jantung & Pembuluh Darah",
    "Klinik Kulit & Kelamin": "Kulit & Kelamin",
    "Klinik Kebidanan & Kandungan": "Kebidanan & Kandungan",
    "Klinik Anak": "Anak",
    "Klinik Mata": "Mata",
    "Klinik Neurologi": "Neurologi (Syaraf)",
    "Klinik Psikiatri": "Psikiatri",
    "Klinik THT": "THT",
    "Klinik Orthopaedi": "Orthopaedi",
    "Klinik Paru": "Paru",
    "Klinik Bedah": "Bedah",
    "Klinik Bedah Anak": "Bedah Anak",
    "Klinik Gigi": "Gigi Umum",
    "Klinik Umum": "Klinik Umum",
  };
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f

  @override
  void onInit() {
    super.onInit();
<<<<<<< HEAD
    filteredList.assignAll(listPoliklinik);
  }

  // Search bar
  void searchPoliklinik(String query) {
    if (query.isEmpty) {
      filteredList.assignAll(listPoliklinik);
      return;
    }
    filteredList.assignAll(listPoliklinik.where((p) =>
        p.namaPoli.toLowerCase().contains(query.toLowerCase()) ||
        p.namaDokter.toLowerCase().contains(query.toLowerCase())));
  }

  // 🔥 FILTER DARI HALAMAN POLIKLINIK (klik klinik)
  void filterByKlinik(String klinik) {
    klinik = klinik.toLowerCase().replaceAll("klinik ", "");

    filteredList.assignAll(
      listPoliklinik.where((p) =>
          p.namaPoli.toLowerCase().contains(klinik) ||
          p.namaPoli.toLowerCase().replaceAll("poli ", "").contains(klinik)),
    );
=======
    fetchDokter();
  }

  // =========================================================
  // 🔥 FETCH DOKTER
  // =========================================================
  Future<void> fetchDokter() async {
    try {
      isLoading.value = true;

      final token = box.read("token");
      final res = await http.get(
        Uri.parse("$baseUrl/poli-dokter"),
        headers: {"Authorization": "Key $token"},
      );

      final json = jsonDecode(res.body);
      final data = json["data"] as List;

      dokterList.value =
          data.map((e) => DokterModel.fromJson(e)).toList();

      filteredList.value = dokterList;

    } catch (e) {
      print("ERROR FETCH DOKTER: $e");
    } finally {
      isLoading.value = false;
    }
  }

  // =========================================================
  // 🔍 FILTER SEARCH
  // =========================================================
  void searchPoliklinik(String keyword) {
    keyword = keyword.toLowerCase();

    filteredList.value = dokterList.where((d) {
      return d.namaDokter.toLowerCase().contains(keyword) ||
          d.namaPoli.toLowerCase().contains(keyword);
    }).toList();
  }

  // =========================================================
  // 🔥 FILTER BY KLINIK — FIXED 100% WORK
  // =========================================================
  void filterByKlinik(String selectedPoliUI) {
    // CARI POLI API YANG SESUAI
    final poliAPI = poliMapping[selectedPoliUI] ?? selectedPoliUI;

    print("🔍 FILTER MASUKAN UI  = $selectedPoliUI");
    print("🔍 DIPETAKAN KE API   = $poliAPI");

    filteredList.value = dokterList.where((d) {
      return d.namaPoli.toLowerCase() == poliAPI.toLowerCase();
    }).toList();

    print("Hasil filter: ${filteredList.length} dokter");
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  }
}
