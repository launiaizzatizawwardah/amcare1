import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/rekam_medis_model.dart';

class DetailRiwayatRekamMedis extends StatelessWidget {
  final RekamMedisItem data;

  const DetailRiwayatRekamMedis({super.key, required this.data});

  Widget buildInfo(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
<<<<<<< HEAD
          child: Text(
            label,
            style: const TextStyle(fontFamily: 'LexendExa', fontSize: 12),
          ),
=======
          child: Text(label,
              style: const TextStyle(fontFamily: 'LexendExa', fontSize: 12)),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        ),
        const Text(" : ",
            style: TextStyle(fontFamily: 'LexendExa', fontSize: 12)),
        Expanded(
<<<<<<< HEAD
          child: Text(
            value,
            style: const TextStyle(fontFamily: 'LexendExa', fontSize: 12),
          ),
=======
          child: Text(value,
              style: const TextStyle(fontFamily: 'LexendExa', fontSize: 12)),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
<<<<<<< HEAD
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
=======
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
<<<<<<< HEAD
                
                // ⭐ Tanggal di paling atas
                Text(
                  data.tanggal,
                  style: const TextStyle(
                    fontFamily: 'LexendExa',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 6),

                // ⭐ Poli
                Text(
                  data.poli,
                  style: const TextStyle(
                    fontFamily: 'LexendExa',
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 4),

                // ⭐ Dokter
                Text(
                  data.dokter,
                  style: const TextStyle(
                    fontFamily: 'LexendExa',
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 8),

                // ⭐ Bagian Diagnosa
                const Text(
                  'Keluhan & Diagnosa',
                  style: TextStyle(
                    fontFamily: 'LexendExa',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 6),

                buildInfo("Keluhan", data.keluhan),
                buildInfo("Diagnosa", data.diagnosa),

                const SizedBox(height: 12),
                const Divider(),

=======
                Text(data.tanggal,
                    style: const TextStyle(
                        fontFamily: 'LexendExa',
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),

                const SizedBox(height: 6),

                Text(data.poli,
                    style: const TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                        color: Colors.black87)),

                const SizedBox(height: 4),

                Text(data.dokter,
                    style: const TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 12,
                        color: Colors.black54)),

                const SizedBox(height: 12),
                const Divider(),

                const Text("Keluhan & Diagnosa",
                    style: TextStyle(
                      fontFamily: 'LexendExa',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),

                const SizedBox(height: 8),

                // buildInfo("Keluhan", data.keluhan),
                buildInfo("Diagnosa", data.diagnosa),

>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
                const SizedBox(height: 10),
              ],
            ),
          ),

<<<<<<< HEAD
          // ❌ Tombol close
=======
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
          Positioned(
            right: 4,
            top: 4,
            child: IconButton(
<<<<<<< HEAD
              icon: const Icon(Icons.close, size: 20, color: Colors.black54),
              onPressed: () => Get.back(),
            ),
          ),
=======
              icon: const Icon(Icons.close),
              onPressed: () => Get.back(),
            ),
          )
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
        ],
      ),
    );
  }
}
