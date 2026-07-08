import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/context_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.trailing,
    this.backIcon,
    this.onTrailingTap,
    this.onBackTap,
  });
  final String title;
  final Widget? backIcon;
  final Widget? trailing;
  final VoidCallback? onTrailingTap;
  final VoidCallback? onBackTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          backIcon ??
              _buildContainer(
                context,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: context.colorScheme.secondary,
                ),
                onTap: onBackTap ?? () => context.pop(),
              ),
          const Spacer(),
          Text(
            title,
            style: context.textStyles.labelLarge,
          ),
          const Spacer(),
          if (trailing != null) ...[
            _buildContainer(
              context,
              child: trailing,
              onTap: onTrailingTap,
            ),
          ]
        ],
      ),
    );
  }

  Container _buildContainer(BuildContext context,
      {Widget? child, VoidCallback? onTap}) {
    return Container(
      width: 45,
      height: 45,
      padding:  EdgeInsets.only(
        left: context.isArabic ? 0: 10,
        right: context.isArabic ? 10: 0,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: context.colorScheme.surface, width: 1),
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle),
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
