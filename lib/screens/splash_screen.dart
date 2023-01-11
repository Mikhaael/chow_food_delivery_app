import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/routes.dart';
import '../utils/assets.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    Future.delayed(
      const Duration(seconds: 10),
        () => Navigator.pushReplacementNamed(context, Routes.onboarding)
    );
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: const Center(
        child: Image(
          image: AssetImage(Assets.chowLogo),
        ),
      ),
    );
  }
}
