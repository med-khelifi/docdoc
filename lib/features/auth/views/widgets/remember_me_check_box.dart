import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class RememberMeCheckBoxAndForgotPasswordSection extends StatelessWidget {
  const RememberMeCheckBoxAndForgotPasswordSection({
    super.key,
    this.onForgotPasswordPressed,
  });
  final VoidCallback? onForgotPasswordPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text(context.l10n.rememberMe, style: context.textStyles.bodySmall),
        const Spacer(),
        GestureDetector(
          onTap: onForgotPasswordPressed,
          child: Text(
            context.l10n.forgotPassword,
            style: context.textStyles.bodySmall!.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
