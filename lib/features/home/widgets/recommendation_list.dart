import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/home/widgets/recommendation_list_item.dart';
import 'package:flutter/material.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const RecommendationListItem(),
      itemCount: 10,
      separatorBuilder: (context, index) => const VerticalSpace(height: 16),
    );
  }
}
