import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_phone_text_field.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/primary_text_field.dart';
import 'package:doctorine/features/auth/views/widgets/oauth_widgets.dart';
import 'package:doctorine/features/auth/views/widgets/sign_in_with_message.dart';
import 'package:doctorine/features/auth/views/widgets/bottom_text.dart';
import 'package:doctorine/features/auth/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                Text(context.l10n.createAccount, style: context.textStyles.titleMedium),
                const VerticalSpace(height: 8),
                Text(
                  context.l10n.welcomeBackDescription,
                  style: context.textStyles.bodyMedium,
                ),
                const VerticalSpace(height: 36),
                PrimaryTextFormField(hint: context.l10n.email),
                const VerticalSpace(height: 16),
                PrimaryTextFormField(hint: context.l10n.password, isPassword: true),
                const VerticalSpace(height: 16),
                CustomPhoneTextField(hint: context.l10n.phoneNumber),
                const VerticalSpace(height: 32),
                PrimaryButton(text: context.l10n.createAccount, onPressed: () {}),
                const VerticalSpace(height: 46),
                const SignInWithMessage(),
                const VerticalSpace(height: 32),
                const OauthWidgets(),
                const VerticalSpace(height: 32),
                const TermsAndConditionsText(),
                const VerticalSpace(height: 24),
                BottomText(
                  messageText: context.l10n.alreadyHaveAccount,
                  clickableText: context.l10n.signIn,
                  onTextClicked: () => context.pop(),
                ),
                const VerticalSpace(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
