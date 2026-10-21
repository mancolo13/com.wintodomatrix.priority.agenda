import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final tasks = [
      ('09:00 - 10:30', 'Architecture Review', 'High Priority', Colors.redAccent),
      ('11:00 - 12:00', 'Sprint Roadmap Planning', 'Schedule', Colors.blueAccent),
      ('14:00 - 15:00', 'Code Refactor Tier 1', 'Focus Block', Colors.indigoAccent),
      ('16:00 - 16:30', 'Team Sync & Standup', 'Delegated', Colors.amber),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Today\'s Agenda')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: tasks.map((t) => Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: [
              Text(t.$1, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 13)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.$2, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Text(t.$3, style: TextStyle(color: t.$4, fontSize: 12)),
                  ],
                ),
              ),
              const Icon(Icons.check_circle_outline, color: Colors.white38),
            ],
          ),
        )).toList(),
      ),
    );
  }
}

