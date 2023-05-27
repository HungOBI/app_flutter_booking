import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final Color activeColor;
  final Color inactiveColor;
  //final ValueChanged<int> onTap;
  const CustomNavigationBar({
    this.activeColor = Colors.black,
    this.inactiveColor = const Color.fromARGB(255, 153, 153, 152),
    //  required this.onTap,
  });

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;
  final List<IconData> _icons = [
    Icons.home,
    Icons.menu,
    Icons.punch_clock_sharp,
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
      elevation: 0,
      backgroundColor: Colors.white,
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
