import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final Color activeColor;
  final Color inactiveColor;

  const CustomNavigationBar({
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;
  final List<IconData> _icons = [
    Icons.home,
    Icons.menu_book,
    Icons.lock_clock,
    Icons.message,
    Icons.person,
  ];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        _icons.length,
        (index) => BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                _icons[index],
                color: _currentIndex == index
                    ? widget.activeColor
                    : widget.inactiveColor,
              ),
            ],
          ),
          label: '',
        ),
      ),
      selectedItemColor: widget.activeColor,
      unselectedItemColor: widget.inactiveColor,
    );
  }
}
