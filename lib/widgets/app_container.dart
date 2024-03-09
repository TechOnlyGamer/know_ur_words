import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, this.child, this.width, this.height});

  final Widget? child;
  final double? width;
  final double? height;

// Custom Container Widget which has predefined app shadows for neon effect, blue and light blue

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: theme.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.background,
            blurRadius: 10,
            offset: const Offset(-4, -4),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: theme.colorScheme.primary,
            blurRadius: 10,
            offset: const Offset(5, 5),
            spreadRadius: 1,
          )
        ],
      ),
      width: width,
      height: height,
      child: Center(child: child),
    );
  }
}
