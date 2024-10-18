// widget/phone_call_button.dart
import 'package:flutter/material.dart';

class PhoneCallButton extends StatelessWidget {
  const PhoneCallButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            Text(label),
          ],
        ),
      ),
    );
  }
}
