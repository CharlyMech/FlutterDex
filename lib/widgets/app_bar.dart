import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PokedexAppBar extends StatelessWidget implements PreferredSizeWidget {
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
        width: MediaQuery.of(context).size.width / 1.5,
      ),
    ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
