import 'package:finwise/features/analysis/views/analysis_view.dart';
import 'package:finwise/features/categories/view/categories.dart';
import 'package:finwise/features/home/views/home_view.dart';
import 'package:finwise/features/landing/widgets/bottom_nav_widget.dart';
import 'package:finwise/features/profile/view/profile_view.dart';
import 'package:finwise/features/transcation/view/transaction_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingView extends ConsumerStatefulWidget{
  const LandingView({super.key});

  @override
   ConsumerState<LandingView> createState() => _LandingViewState();
}

 class _LandingViewState extends ConsumerState<LandingView> {
  @override
  
  
  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(navIndexProvider);

    final screens = [
    HomeView(),
    AnalysisView(),
    TransactionView(),
    Categoriesview(),
    ProfileView()
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}

