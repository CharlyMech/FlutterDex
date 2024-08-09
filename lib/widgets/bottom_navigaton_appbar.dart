import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_cubit.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/models/navigation_item.dart';
import 'package:flutterdex/screens/generations.dart';

class PokedexBottomAppBar extends StatelessWidget {
  const PokedexBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        color: Color(0xFF212121),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: navigationItems.map((item) {
                ScreenEnum? currentScreen;
                if (state is NavigationStateGenerations) {
                  currentScreen = ScreenEnum.generations;
                } else if (state is NavigationStateRegions) {
                  currentScreen = ScreenEnum.regions;
                } else if (state is NavigationStateItems) {
                  currentScreen = ScreenEnum.items;
                } else {
                  print('ERROR ON NAVIGATION APP BAR CURRENT SCREEN');
                  context.read<NavigationCubit>().emit(NavigationStateError(
                      error: 'Something went wrong loading the data'));
                }
                final bool isCurrentPage =
                    item.screen != null && item.screen == currentScreen;
                return SizedBox(
                    height: 60,
                    width: 75,
                    child: InkWell(
                        onTap: () {
                          if (item.onTap != null) {
                            item.onTap!();
                          } else if (item.screen != null) {
                            context
                                .read<NavigationCubit>()
                                .navigateTo(item.screen!);
                          }
                        },
                        child: Opacity(
                          opacity: isCurrentPage ? 1 : 0.4,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Visibility(
                                visible: isCurrentPage,
                                child: Positioned(
                                  top: 0,
                                  child: Container(
                                    height: 3,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFE0E0E0),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: SvgPicture.asset(item.iconPath)),
                                  Text(
                                    item.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Color(0xFFE0E0E0), fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )));
              }).toList(),
            );
          }),
        ));
  }
}
