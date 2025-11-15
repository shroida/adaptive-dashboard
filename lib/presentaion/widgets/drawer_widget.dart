import 'package:flutter/material.dart';

Widget drawerItem(IconData icon, String title, {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    child: Card(
      elevation: isSelected ? 4 : 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: Colors.blue.shade200, width: 1)
            : BorderSide.none,
      ),
      color: isSelected ? const Color(0xFFE0E0FF) : Colors.white,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          hoverColor: Colors.blue.withOpacity(0.1),
          splashColor: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 22,
                  color: isSelected ? Colors.blue : Colors.grey[700],
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? Colors.blue : Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
