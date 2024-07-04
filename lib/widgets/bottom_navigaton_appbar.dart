import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class PokedexBottomAppBar extends StatefulWidget {
  const PokedexBottomAppBar({super.key});

  @override
  State<PokedexBottomAppBar> createState() => _PokedexBottomAppBarState();
}

class _PokedexBottomAppBarState extends State<PokedexBottomAppBar> {
  Artboard? generations;
  Artboard? regions;
  Artboard? items;
  Artboard? menu;
  SMITrigger? touchGenerations;
  SMITrigger? touchRegions;
  SMITrigger? touchItems;
  SMITrigger? touchMenu;

  @override
  void initState() {
    super.initState();
    // rootBundle.load('assets/rive/generations_navicon.riv').then(
    //   (data) async {
    //     try {
    //       final file = RiveFile.import(data);
    //       final artboard = file.mainArtboard;
    //       var controller =
    //           StateMachineController.fromArtboard(artboard, 'generationsSM');
    //       if (controller != null) {
    //         artboard.addController(controller);
    //         touchGenerations = controller.findSMI('touch');
    //       }
    //       setState(() => generations = artboard);
    //     } catch (e) {
    //       print(e);
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    const double bottomNavBarHeight = 70;
    return Container(
        height: bottomNavBarHeight,
        width: 200,
        decoration: const BoxDecoration(
          color: Color(0xFF212121),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   height: bottomNavBarHeight,
            //   width: bottomNavBarHeight,
            //   child: InkWell(
            //       onTap: () {
            //         touchGenerations!.fire();
            //       },
            //       child: RiveAnimation.asset(
            //         'assets/rive/generations_navicon.riv',
            //       )),
            // ),
            // SizedBox(
            //   height: bottomNavBarHeight,
            //   width: bottomNavBarHeight,
            //   // onTap: () => touchGenerations!.value = true,
            //   child: RiveAnimation.asset(
            //     'assets/rive/regions_navicon.riv',
            //   ),
            // ),
            // SizedBox(
            //   height: bottomNavBarHeight,
            //   width: bottomNavBarHeight,
            //   // onTap: () => touchGenerations!.value = true,
            //   child: RiveAnimation.asset(
            //     'assets/rive/items_navicon.riv',
            //   ),
            // ),
            // SizedBox(
            //   height: bottomNavBarHeight,
            //   width: bottomNavBarHeight,
            //   // onTap: () => touchGenerations!.value = true,
            //   child: RiveAnimation.asset(
            //     'assets/rive/menu_navicon.riv',
            //   ),
            // ),
          ],
        ));
  }
}
