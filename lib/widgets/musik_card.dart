
import 'package:flutter/material.dart';
import '../models/musik.dart';

class MusikCard extends StatelessWidget {
  final Musik musik;
  final VoidCallback onTap;

  const MusikCard({
    super.key,
    required this.musik,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.music_note,
            color: Colors.white,
          ),
        ),
        title: Text(
          musik.judul,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${musik.artis} • ${musik.formatDurasi}',
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
