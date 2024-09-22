import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/side_menu/side_menu_cubit.dart';
import 'package:flutterdex/layouts/main_layout.dart';
import 'package:flutterdex/widgets/side_menu.dart';

class AnimatedSideMenuLayout extends StatefulWidget {
  const AnimatedSideMenuLayout({super.key});

  @override
  State<AnimatedSideMenuLayout> createState() => _AnimatedSideMenuLayoutState();
}

class _AnimatedSideMenuLayoutState extends State<AnimatedSideMenuLayout>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFDC0A2D), // primaryColor
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.9).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SideMenuCubit, bool>(
        listener: (context, sideMenuState) {
      if (sideMenuState) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }, builder: (context, sideMenuState) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        backgroundColor: const Color(0xFFDC0A2D), // primaryColor
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              right: 0,
              width: animation.value * MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height,
              child: const SideMenu(),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(animation.value - 75 * animation.value * pi / 180),
              child: Transform.translate(
                offset: Offset(
                  -animation.value * MediaQuery.of(context).size.width / 2,
                  0,
                ),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(animation.value * 24),
                    ),
                    child: const MainLayout(),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
