import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Productivity')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                const Text('QUADRANT TIME RATIO', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                const SizedBox(height: 14),
                const Text('68% Focus Time', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: AppTheme.primaryColor)),
                const SizedBox(height: 10),
                LinearProgressIndicator(value: 0.68, color: AppTheme.primaryColor, backgroundColor: Colors.white12, minHeight: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

