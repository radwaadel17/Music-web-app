import 'package:flutter/material.dart';

class TapAnimatedScale extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const TapAnimatedScale({Key? key, required this.child, this.onTap}) : super(key: key);

  @override
  State<TapAnimatedScale> createState() => _TapAnimatedScaleState();
}

class _TapAnimatedScaleState extends State<TapAnimatedScale> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        if (widget.onTap != null) widget.onTap!();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.93 : 1.0, // 0.93 معناها هيصغر بنسبة بسيطة وقت الضغطة
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}