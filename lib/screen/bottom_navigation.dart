import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mandirwiki/screen/home_page.dart';
import 'package:mandirwiki/screen/resnt_and_locker.dart';
import 'package:mandirwiki/util/app_colors.dart';

enum SelectedIcon { favorite, share, indicator, reels, chat }

class CustomBottomBar extends StatefulWidget {
  final Function(SelectedIcon) onIconSelected; // Callback function

  const CustomBottomBar({Key? key, required this.onIconSelected})
      : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  SelectedIcon _selectedIcon = SelectedIcon.favorite; // Initially selected icon

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildIconButton(
            iconPath: 'assets/images/home.svg',
            selected: _selectedIcon == SelectedIcon.favorite,
            onPressed: () {
              widget.onIconSelected(SelectedIcon.favorite); // Callback
              setState(() {
                _selectedIcon = SelectedIcon.favorite;
              });
            },
          ),
          buildIconButton(
            iconPath: 'assets/images/scan.svg',
            selected: _selectedIcon == SelectedIcon.indicator,
            onPressed: () {
              widget.onIconSelected(SelectedIcon.indicator); // Callback
              setState(() {
                _selectedIcon = SelectedIcon.indicator;
              });
            },
          ),
          buildIconButton(
            iconPath: 'assets/images/locker.svg',
            selected: _selectedIcon == SelectedIcon.reels,
            onPressed: () {
              widget.onIconSelected(SelectedIcon.reels); // Callback
              setState(() {
                _selectedIcon = SelectedIcon.reels;
              });
            },
          ),
          buildIconButton(
            iconPath: 'assets/images/blog.svg',
            selected: _selectedIcon == SelectedIcon.chat,
            onPressed: () {
              widget.onIconSelected(SelectedIcon.chat); // Callback
              setState(() {
                _selectedIcon = SelectedIcon.chat;
              });
            },
          ),
          buildIconButton(
            iconPath: 'assets/images/samay.svg',
            selected: _selectedIcon == SelectedIcon.share,
            onPressed: () {
              widget.onIconSelected(SelectedIcon.share); // Callback
              setState(() {
                _selectedIcon = SelectedIcon.share;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget buildIconButton({
    required String iconPath,
    required bool selected,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        child: Container(
          decoration: selected
              ? BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  color: selected
                      ? Colors.white.withOpacity(.20)
                      : Colors.transparent,
                )
              : const BoxDecoration(),
          child: IconButton(
            icon: SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  SelectedIcon _selectedIcon = SelectedIcon.favorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getContentForSelectedIcon(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: CustomBottomBar(
          onIconSelected: (icon) {
            setState(() {
              _selectedIcon = icon;
            });
          },
        ),
      ),
    );
  }

  Widget getContentForSelectedIcon() {
    switch (_selectedIcon) {
      case SelectedIcon.favorite:
        return HomePage();
      case SelectedIcon.share:
        return RentAndLocker();
      case SelectedIcon.reels:
        return HomePage();
      case SelectedIcon.chat:
        return HomePage();
      case SelectedIcon.indicator:
        return HomePage();
    }
  }
}
