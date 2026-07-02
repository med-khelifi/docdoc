
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/features/settings/models/faq_model.dart';
import 'package:flutter/material.dart';

class FaqViewQuestionListTile extends StatelessWidget {
  const FaqViewQuestionListTile({
    super.key,
    required this.faq,
  });

  final FaqModel faq;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ExpansionTile(
            iconColor: AppColors.grey,
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: Text(
              faq.question,
              style: context.textStyles.bodyMedium,
            ),
            children: [
              Text(
                faq.answer,
                style: context.textStyles.bodySmall?.copyWith(height: 1.8),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
