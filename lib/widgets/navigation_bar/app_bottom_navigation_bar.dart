import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavbar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: PRIMARY_COLOR,
      unselectedItemColor: NEUTRAL_N700,
      showUnselectedLabels: true,
      elevation: 0,
      backgroundColor: PURE_BLACK,
      selectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
      unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.git_commit),
          label: 'Commits',
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.user),
          label: 'User Profile',
        ),
      ],
      onTap: onTap,
    );
  }
}
