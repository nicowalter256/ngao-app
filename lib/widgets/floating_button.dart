import 'package:flutter/material.dart';

import '../constants/images.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 81.0,
        width: 80.0,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(group),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
