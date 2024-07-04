import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PokedexAppBar extends StatelessWidget {
  const PokedexAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(
        'assets/svg/pokedex_appbar.svg',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/public/flutterdex_title.png',
        width: 250,
      ),
    ]);
  }
}
