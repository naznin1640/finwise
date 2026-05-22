import 'package:finwise/core/constants/constantcolors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';


final navIndexProvider = StateProvider<int>((ref) => 0);
final titleProvider = StateProvider<int>((ref) => 0);

class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navIndexProvider);

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      selectedItemColor: ConstantColors.mainGreen,
      unselectedItemColor: ConstantColors.lighGreen,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ConstantColors.lighGreen,

      onTap: (index) {
        ref.read(navIndexProvider.notifier).state = index;
        ref.read(titleProvider.notifier).state = index;
      },

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0XFF052224)), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.analytics, color: Color(0XFF052224)),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.compare_arrows,color: Color(0XFF052224)),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.category_sharp,color: Color(0XFF052224)),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Color(0XFF052224)),label: ""),
      ],
    );
  }
}