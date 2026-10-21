import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Delegated Tasks')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(4, (i) => Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: [
              CircleAvatar(backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2), child: Text('M${i+1}', style: const TextStyle(color: Colors.white))),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(['Cloud Logs Audit', 'QA Smoke Tests', 'Database Migration', 'UI Assets Export'][i], style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text('Assigned: Team Alpha • Due Today', style: TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                ),
              ),
              const Text('Pending', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
            ],
          ),
        )),
      ),
    );
  }
}

