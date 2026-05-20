import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/landing/model/state/landing_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class LandingNotifier extends StateNotifier<LandingState> {
  LandingNotifier()
    : super(
        LandingState(
          currentIndex: 0,
          selectedItemColor: ConstantColors.mainGreen,
          unselectedItemColor:  ConstantColors.lighGreen,
          selectedFontSize: 14,
          unselectedFontSize: 12,
        ),
      );

  void changeIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}

final landingProvider = StateNotifierProvider<LandingNotifier, LandingState>(
  (ref) => LandingNotifier(),
);
