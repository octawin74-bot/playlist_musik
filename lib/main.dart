
import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(const PlaylistApp());
}

class PlaylistApp extends StatelessWidget {
  const PlaylistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playlist Musik',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
