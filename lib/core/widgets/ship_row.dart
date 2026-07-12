import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/custom_blue_ship.dart';
import 'package:flutter/material.dart';

class ChipRow extends StatelessWidget {
  final List<String> options;
  final String selected;
  final ValueChanged<String> onSelected;
  final bool showStarIcon;

  const ChipRow({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelected,
    this.showStarIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: options.map((option) {
          final isSelected = option == selected;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomBlueChip(
                isSelected: isSelected,
                showStarIcon: showStarIcon,
                label: context.l10n.all,
                onTap: () => onSelected(option)),
          );
        }).toList(),
      ),
    );
  }
}
