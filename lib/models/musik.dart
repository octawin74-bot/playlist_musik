
class Musik {
  final int id;
  final String judul;
  final String artis;
  final int durasiDetik;
  final String album;

  Musik({
    required this.id,
    required this.judul,
    required this.artis,
    required this.durasiDetik,
    required this.album,
  });

  factory Musik.fromJson(Map<String, dynamic> json) {
    return Musik(
      id: json['id'],
      judul: json['judul'],
      artis: json['artis'],
      durasiDetik: json['durasiDetik'],
      album: json['album'],
    );
  }

  String get formatDurasi {
    int menit = durasiDetik ~/ 60;
    int detik = durasiDetik % 60;

    return '$menit:${detik.toString().padLeft(2, '0')}';
  }
}
