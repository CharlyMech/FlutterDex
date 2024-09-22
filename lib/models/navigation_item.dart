enum ScreenEnum { generations, regions, items, menu }

class NavigationItem {
  final String iconPath;
  final String name;
  final ScreenEnum? screen; // Nullable to handle special cases

  NavigationItem({
    required this.iconPath,
    required this.name,
    this.screen,
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
  ),
];
