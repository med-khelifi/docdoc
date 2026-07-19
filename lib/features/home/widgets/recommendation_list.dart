import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/features/home/widgets/recommendation_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.push(AppRoutes.doctorDetails),
          child: const RecommendationListItem()),
      itemCount: 10,
      separatorBuilder: (context, index) => const VerticalSpace(height: 16),
    );
  }
}
