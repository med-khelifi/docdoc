import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/features/settings/data/faq_data.dart';
import 'package:doctorine/features/settings/views/widgets/faq_view_question_list_tile.dart';
import 'package:flutter/material.dart';

class FaqView extends StatelessWidget {
  const FaqView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const VerticalSpace(height: 32),
            const CustomAppBar(title: "FAQ"),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              itemCount: faqList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return FaqViewQuestionListTile(faq: faqList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
