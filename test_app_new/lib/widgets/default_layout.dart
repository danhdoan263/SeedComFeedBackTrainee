import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsets? customPadding;
  final Color? backgroundColor;

  const DefaultLayout({
    super.key,
    required this.child,
    this.customPadding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: customPadding ?? const EdgeInsets.only(
        top: 64,
        left: 36,
        right: 36,
      ),
      color: backgroundColor,
      child: child,
    );
  }
} 