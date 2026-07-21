import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({required this.height, super.key});
  final double height;
  @override
  Widget build(BuildContext _) => SizedBox(height: height);
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({required this.width, super.key});
  final double width;
  @override
  Widget build(BuildContext _) => SizedBox(width: width);
}

//! for slivers
class SliverVerticalSpace extends StatelessWidget {
  const SliverVerticalSpace({required this.height, super.key});
  final double height;
  @override
  Widget build(BuildContext _) =>
      SliverToBoxAdapter(child: SizedBox(height: height));
}

class SliverHorizontalSpace extends StatelessWidget {
  const SliverHorizontalSpace({required this.width, super.key});
  final double width;
  @override
  Widget build(BuildContext _) =>
      SliverToBoxAdapter(child: SizedBox(width: width));
}
