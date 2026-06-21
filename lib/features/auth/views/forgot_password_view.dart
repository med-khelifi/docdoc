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
                Text("Forgot Password", style: context.textStyles.titleMedium),
                const VerticalSpace(height: 8),
                Text(
                  "At our app, we take the security of your information seriously.",
                  style: context.textStyles.bodyMedium,
                ),
                const VerticalSpace(height: 36),
                const PrimaryTextFormField(hint: "Email"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: PrimaryButton(text: "Reset Password", onPressed: () {}),
      ),
    );
  }
}
