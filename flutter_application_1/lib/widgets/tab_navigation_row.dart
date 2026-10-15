import 'package:flutter/material.dart';

class TabNavigationRow extends StatelessWidget {
  const TabNavigationRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tabs = [
      {'icon': Icons.music_note_rounded, 'label': 'Música'},
      {'icon': Icons.sports_esports_rounded, 'label': 'Juegos'},
      {'icon': Icons.photo_camera_back_rounded, 'label': 'Fotos'},
      {'icon': Icons.favorite_rounded, 'label': 'Interés'},
      {'icon': Icons.sports_soccer_rounded, 'label': 'Deporte'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabs.map((tab) {
          return Column(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.08), // Círculo sutil y translúcido
                  border: Border.all(
                    color: Colors.black.withOpacity(0.15),
                    width: 1,
                  ),
                ),
                child: Icon(
                  tab['icon'],
                  size: 22,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                tab['label'],
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}