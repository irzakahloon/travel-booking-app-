import 'package:flutter/material.dart';

class OverlayBox extends StatelessWidget {
  OverlayBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white70,
        ),
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.7),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
