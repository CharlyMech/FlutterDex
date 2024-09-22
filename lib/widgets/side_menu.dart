import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/side_menu/side_menu_cubit.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideMenuCubit, bool>(
      builder: (context, isMenuOpened) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: double.infinity,
              color: const Color(0xFFDC0A2D), // primaryColor
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFF8F8F8), // bgColor,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            color: Color(0xFF212121), // fontColor
                            onPressed: () =>
                                context.read<SideMenuCubit>().toggle(),
                            icon: Icon(Icons.close),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
