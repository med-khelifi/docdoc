import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [_buildBlueContainer(context), _buildImage()],
        ),
      ),
    );
  }

  Container _buildBlueContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        image: const DecorationImage(
          image: AssetImage(AppAssets.assetsImagesHomeBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.bookAndScheduleTitle,
            style: context.textStyles.displayMedium?.copyWith(height: 1.4),
            textAlign: TextAlign.start,
          ),
          const Spacer(),
          SecondaryButton(onPressed: () {}, text: context.l10n.findNearby),
        ],
      ),
    );
  }

  Positioned _buildImage() {
    return Positioned(
      right: 8,
      bottom: 0,
      child: Image.asset(
        AppAssets.assetsImagesOnboardingDoctor,
        fit: BoxFit.cover,
        height: 210,
      ),
    );
  }
}
