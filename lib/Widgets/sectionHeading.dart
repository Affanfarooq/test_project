import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String title;

  const SectionHeading(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}
