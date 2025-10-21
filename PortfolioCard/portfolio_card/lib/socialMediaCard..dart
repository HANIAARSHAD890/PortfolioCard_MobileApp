import 'package:flutter/material.dart';

class Socialmediacard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const Socialmediacard({
    required this.imagePath,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1),
        child: Image.asset(imagePath, width: 30, height: 30),
      ),
    );
  }
}
