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

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeTab,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'Collections'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Recipes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Weekplan'),
        ],
      ),
    );
  }
}
