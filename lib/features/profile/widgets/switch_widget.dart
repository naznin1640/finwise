import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/provider/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwitchWidget extends ConsumerWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOn = ref.watch(switchProvider);
    return Switch(
      activeTrackColor: ConstantColors.mainGreen,
      activeThumbColor: ConstantColors.lighGreen,
      inactiveThumbColor: ConstantColors.white,
      inactiveTrackColor: ConstantColors.mainGreen,

      value: isOn,

      onChanged: (value) {
        ref.read(switchProvider.notifier).state = value;
      },
    );
  }
}
