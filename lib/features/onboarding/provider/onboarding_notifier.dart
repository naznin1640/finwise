import 'package:flutter_riverpod/legacy.dart';

class OnboardingNotifier extends StateNotifier<int> {
  OnboardingNotifier() : super(0);

  void changePage(int index){
    state = index;
  }
}

final onboardingProvider = StateNotifierProvider<OnboardingNotifier, int>(
  (ref) => OnboardingNotifier(),
);
