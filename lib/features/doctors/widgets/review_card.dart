import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) => Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.assetsImagesPlaceHolder,
            height: 50,
            width: 50,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jane",
                      style: context.textStyles.labelMedium,
                    ),
                    const Spacer(),
                    Text(
                      "Today",
                      style: context.textStyles.bodyMedium,
                    ),
                  ],
                ),
                Text(
                  "⭐⭐⭐⭐⭐",
                  style: context.textStyles.bodySmall,
                ),
                Text(
                  "As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.",
                  style: context.textStyles.bodyMedium,
                ),
              ],
            ),
          )
        ],
      );
}
