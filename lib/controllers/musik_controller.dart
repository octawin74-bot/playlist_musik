
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/musik.dart';

class MusikController {
  Future<List<Musik>> ambilDataMusik() async {
    final String response =
        await rootBundle.loadString('assets/data/musik.json');

    final List<dynamic> data = jsonDecode(response);

    return data.map((item) => Musik.fromJson(item)).toList();
  }

  int hitungTotalDurasi(List<Musik> daftarMusik) {
    return daftarMusik.fold(
      0,
      (total, musik) => total + musik.durasiDetik,
    );
  }

  String formatTotalDurasi(int detik) {
    int menit = detik ~/ 60;
    int sisaDetik = detik % 60;

    return '$menit menit $sisaDetik detik';
  }
}
