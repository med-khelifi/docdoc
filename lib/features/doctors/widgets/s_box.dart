import 'package:flutter/material.dart';

class SBox extends StatelessWidget {
  const SBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: child,
    );
  }
}
