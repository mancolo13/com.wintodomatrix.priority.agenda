import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Priority Matrix'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_task, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  _quadrant('DO FIRST', 'Urgent & Important', Colors.redAccent, '4 Tasks'),
                  const SizedBox(width: 10),
                  _quadrant('SCHEDULE', 'Not Urgent, Important', Colors.blueAccent, '7 Tasks'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  _quadrant('DELEGATE', 'Urgent, Low Impact', Colors.amber, '3 Tasks'),
                  const SizedBox(width: 10),
                  _quadrant('ELIMINATE', 'Distractions', Colors.grey, '2 Tasks'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _quadrant(String title, String desc, Color c, String count) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppTheme.surfaceColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: c.withValues(alpha: 0.3), width: 1.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: c.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(8)),
              child: Text(title, style: TextStyle(color: c, fontWeight: FontWeight.bold, fontSize: 12)),
            ),
            const SizedBox(height: 6),
            Text(desc, style: const TextStyle(color: Colors.white60, fontSize: 11)),
            const Spacer(),
            Text(count, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
          ],
        ),
      ),
    );
  }
}

