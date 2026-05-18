import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/onboarding/provider/onboarding_notifier.dart';
import 'package:finwise/features/onboarding/view/onboarding2_view.dart';
import 'package:finwise/features/onboarding/view/onboarding_view1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingView extends ConsumerStatefulWidget {
  const OnboardingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends ConsumerState<OnboardingView> {



  @override
  Widget build(BuildContext context) {

    final currentPage = ref.watch(onboardingProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: 
          PageView(
            onPageChanged: (index){
              ref.read(onboardingProvider.notifier).changePage(index);
            },
            children: [
          OnboardingView1(),
          OnboardingView2()
            ]
          )),
        ],
      ),
    );
  }
}
