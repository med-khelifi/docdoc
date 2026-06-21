import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class RecommendationListItem extends StatelessWidget {
  const RecommendationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 16,
        children: [_buildDoctorImage(), _buildDoctorInfo(context)],
      ),
    );
  }

  Column _buildDoctorInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Dr. John Doe", style: context.textStyles.displayLarge),
        const VerticalSpace(height: 4),
        Text(
          "General | RSUD Gatot Subroto",
          style: context.textStyles.headlineSmall,
        ),
        const VerticalSpace(height: 12),
        Text("⭐ 4.9 (200 Reviews)", style: context.textStyles.headlineSmall),
      ],
    );
  }

  ClipRRect _buildDoctorImage() {
    return const ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Image(
        image: AssetImage(AppAssets.assetsImagesOnboardingDoctor),
        width: 110,
        height: 110,
        fit: BoxFit.fill,
      ),
    );
  }
}
