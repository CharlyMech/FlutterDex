enum ScreenEnum { generations, regions, items }

class NavigationItem {
  final String iconPath;
  final String name;
  final ScreenEnum? screen; // Nullable to handle special cases
  final Function()? onTap; // Optional callback function

  NavigationItem({
    required this.iconPath,
    required this.name,
    this.screen,
    this.onTap,
  });
}

final navigationItems = [
  NavigationItem(
    name: 'Generations',
    iconPath: 'assets/svg/generations.svg',
    screen: ScreenEnum.generations,
  ),
  NavigationItem(
    name: 'Regions',
    iconPath: 'assets/svg/regions.svg',
    screen: ScreenEnum.regions,
  ),
  NavigationItem(
    name: 'Items',
    iconPath: 'assets/svg/items.svg',
    screen: ScreenEnum.items,
  ),
  NavigationItem(
    name: 'Menu',
    iconPath: 'assets/svg/menu.svg',
    onTap: () {
      // Implement menu-specific action here
      print("tap on menu");
    },
  ),
];
