import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class CustomBlueChip extends StatelessWidget {
  const CustomBlueChip(
      {super.key,
      required this.isSelected,
      required this.showStarIcon,
      required this.label,
      required this.onTap});
  final bool isSelected;
  final bool showStarIcon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? context.colorScheme.primary
              : (context.isDarkMode
                  ? context.colorScheme.secondaryContainer
                  : Colors.white),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected
                ? Colors.transparent
                : (context.isDarkMode
                    ? Colors.transparent
                    : context.colorScheme.outline.withValues(alpha: 0.3)),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showStarIcon) ...[
              Icon(Icons.star,
                  size: 16,
                  color: isSelected
                      ? Colors.white
                      : context.colorScheme.onSurfaceVariant),
              const HorizontalSpace(width: 6),
            ],
            Text(
              label,
              style: context.textStyles.labelSmall?.copyWith(
                color: isSelected
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
