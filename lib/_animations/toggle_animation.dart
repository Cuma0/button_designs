import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';

class ToggleAnimation extends StatefulWidget {
  const ToggleAnimation({super.key});

  @override
  State<ToggleAnimation> createState() => _ToggleAnimationState();
}

class _ToggleAnimationState extends State<ToggleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'sendMessageHero',
      elevation: 0,
      backgroundColor: ColorSchemeLight.instance!.purple,
      onPressed: () => _toggleAnimation(),
      child: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _animationController,
      ),
    );
  }
}
