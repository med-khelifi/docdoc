import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class AboutTabContent extends StatelessWidget {
  const AboutTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Doctor',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            '''
Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.
    ''',
            style: context.textStyles.bodyMedium,
          ),
          Text(
            'Working Time',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            'Monday - Friday, 08.00 AM - 20.00 PM',
            style: context.textStyles.bodyMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            'STR',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            '4726482464',
            style: context.textStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
