import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_phone_text_field.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/primary_text_field.dart';
import 'package:doctorine/core/widgets/picture_picker.dart';
import 'package:flutter/material.dart';

class FillProfileView extends StatelessWidget {
  const FillProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: PrimaryButton(text: context.l10n.submit, onPressed: () {}),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(height: 50),
                Text(
                  context.l10n.fillYourProfile,
                  style: context.textStyles.titleMedium,
                ),
                const VerticalSpace(height: 8),
                Text(
                  context.l10n.fillProfileDescription,
                  style: context.textStyles.bodyMedium,
                ),
                const VerticalSpace(height: 36),
                PicturePicker(onPressed: () {}),
                const VerticalSpace(height: 35),
                PrimaryTextFormField(hint: context.l10n.fullName),
                const VerticalSpace(height: 16),
                PrimaryTextFormField(hint: context.l10n.birthDate),
                const VerticalSpace(height: 16),
                CustomPhoneTextField(hint: context.l10n.phoneNumber),
                const VerticalSpace(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
