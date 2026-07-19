
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/doctors/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ReviewsTabContent extends StatelessWidget {
  const ReviewsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpace(height: 8),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
        ReviewCard(),
      ],
    );
  }
}
