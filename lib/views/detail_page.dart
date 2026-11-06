
import 'package:flutter/material.dart';
import '../models/musik.dart';

class DetailPage extends StatelessWidget {
  final Musik musik;

  const DetailPage({
    super.key,
    required this.musik,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Lagu'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.deepPurple,
                child: Icon(
                  Icons.music_note,
                  size: 65,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 25),

              Text(
                musik.judul,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                musik.artis,
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 10),

              Text('Album: ${musik.album}'),
              Text('Durasi: ${musik.formatDurasi}'),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Tombol Putar (tampilan saja)'),
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Putar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
