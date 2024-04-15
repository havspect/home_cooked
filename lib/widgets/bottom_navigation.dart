import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatefulWidget {
  final Widget child;

  const BottomNavigation({super.key, required this.child});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    void changeTab(int index) {
      switch (index) {
        case 0:
          context.go('/collections');
          break;
        case 1:
          context.go('/recipes');
          break;
        case 2:
          context.goNamed('weekplan');
          break;
        case 3:
          context.go('/weekplan');
          break;
        default:
          context.go('/collections');
          break;
      }
      setState(() {
        currentIndex = index;
      });
    }

    final currentLocation =
        GoRouter.of(context).routeInformationProvider.value.uri;

    Widget? fab;

    if (currentLocation.toString() != '/recipes/add') {
      fab = FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.pushNamed('recipe-add'),
      );
    }

    Widget? icon;

    if (currentLocation.toString() == '/recipes/add') {
      icon = IconButton(
        icon: Icon(Icons.arrow_back_outlined),
        onPressed: () => context.pop(),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: icon,
          title: Text(
            'Home Cooked',
            style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
          ),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: changeTab,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Recipes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'Collections'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Weekplan'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
        floatingActionButton: fab);
  }
}
