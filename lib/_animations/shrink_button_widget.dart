import 'package:flutter/material.dart';

class ShrinkButton extends StatefulWidget {
  final Widget child;
  final Function? onPressed;
  final double shrinkScale;

  const ShrinkButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.shrinkScale = 0.7,
  }) : super(key: key);

  @override
  State<ShrinkButton> createState() => _ShrinkButtonState();
}

class _ShrinkButtonState extends State<ShrinkButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPressed != null) {
          _controller.forward();
          Future.delayed(const Duration(milliseconds: 100), () {
            _controller.reverse();
          }).then((value) {
            Future.delayed(const Duration(milliseconds: 80))
                .then((value) => widget.onPressed!());
          });
        }
      },
      child: ScaleTransition(
        scale: Tween<double>(
          begin: 1.0,
          end: widget.shrinkScale,
        ).animate(_controller),
        child: widget.child,
      ),
    );
  }
}
