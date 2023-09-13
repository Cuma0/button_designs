import '_animations/shrink_button_widget.dart';
import '_animations/toggle_animation.dart';
import 'utils/color_scheme.dart';
import 'utils/context_extensions.dart';
import 'utils/text_theme.dart';

import 'package:flutter/material.dart';

import '_buttons/button_with_icon.dart';
import '_buttons/button_with_outlined.dart';
import '_buttons/button_with_pic.dart';
import '_buttons/button_with_radius.dart';
import '_buttons/button_with_square_icon.dart';
import '_buttons/button_with_stadium_border.dart';
import '_buttons/button_with_zero_padding.dart';
import '_buttons/circle_icon_button.dart';
import '_buttons/textbutton_with_icon.dart';
import '_buttons/textbutton_with_zero_padding.dart';

class HomaPageView extends StatefulWidget {
  const HomaPageView({super.key});

  @override
  State<HomaPageView> createState() => _HomaPageViewState();
}

class _HomaPageViewState extends State<HomaPageView>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchemeLight.instance!.backgroundColor,
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              context.normalSizedBoxVertical,
              buttonWithRadius(),
              context.lowSizedBoxVertical,
              buttonWithStadiumBorder(),
              context.lowSizedBoxVertical,
              buttonWithOutlined(),
              context.lowSizedBoxVertical,
              buttonWithIcon(),
              context.lowSizedBoxVertical,
              buttonWithPic(),
              context.lowSizedBoxVertical,
              textbuttonWithIcon(),
              context.lowSizedBoxVertical,
              circleIconButton(),
              context.lowSizedBoxVertical,
              buttonWithSquareIcon(context),
              context.mediumSizedBoxVertical,
              title("Animations"),
              const Divider(),
              context.mediumSizedBoxVertical,
              _shrinkAnimation(),
              context.lowSizedBoxVertical,
              const ToggleAnimation(),
              context.mediumSizedBoxVertical,
              title("Zero Padding"),
              const Divider(),
              context.mediumSizedBoxVertical,
              buttonWithZeroPadding(),
              textButtonWithZeroPadding(),
              context.highSizedBoxVertical,
            ],
          ),
        ),
      ),
    );
  }

  ShrinkButton _shrinkAnimation() {
    return ShrinkButton(
      child: FloatingActionButton(
        heroTag: 'sendMessageHero',
        elevation: 0,
        backgroundColor: ColorSchemeLight.instance!.green,
        onPressed: null,
        child: const Icon(
          Icons.send,
          size: 24,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        // Button pressed
      },
    );
  }

  Align title(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextThemeLight.instance!.title,
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorSchemeLight.instance!.green,
      toolbarHeight: MediaQuery.of(context).size.height * 0.075,
      title: const Text(
        "Flutter Buttons",
      ),
    );
  }
}
