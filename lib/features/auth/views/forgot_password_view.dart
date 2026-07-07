import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(height: 50),
                Text(context.l10n.forgotPasswordTitle, style: context.textStyles.titleMedium),
                const VerticalSpace(height: 8),
                Text(
                  context.l10n.forgotPasswordDescription,
                  style: context.textStyles.bodyMedium,
                ),
                const VerticalSpace(height: 36),
                PrimaryTextFormField(hint: context.l10n.email),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: PrimaryButton(text: context.l10n.resetPassword, onPressed: () {}),
      ),
    );
  }
}
