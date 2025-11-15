import 'package:flutter/material.dart';

class MiniCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final double textScale;

  const MiniCard(
      {super.key,
      required this.title,
      required this.value,
      this.textScale = 1.0,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5))
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(icon, size: 32, color: Colors.blueAccent),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style:
                      TextStyle(fontSize: 16 * textScale, color: Colors.grey)),
              const SizedBox(height: 4),
              Text(value,
                  style: TextStyle(
                      fontSize: 16 * textScale, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}

class ActivityRow extends StatelessWidget {
  final String activity;
  final String time;

  const ActivityRow({super.key, required this.activity, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(activity, style: const TextStyle(fontSize: 14)),
          Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
