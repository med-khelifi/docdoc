import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/drag_handle_container.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/ship_row.dart';
import 'package:flutter/material.dart';

class SortByBottomSheet extends StatelessWidget {
  SortByBottomSheet({super.key});

  final String selectedSpeciality = 'All';
  final String selectedRating = 'All';

  final specialities = ['All', 'General', 'Neurologic', 'Pediatric'];
  final ratings = ['All', '5', '4', '3', '2'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.isDarkMode ? context.colorScheme.surface : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 12,
        bottom: MediaQuery.of(context).padding.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drag handle
          const DragHandleContainer(),

          Center(
            child:
                Text(context.l10n.sortBy, style: context.textStyles.titleSmall),
          ),
          const VerticalSpace(height: 12),
          Divider(
              height: 1,
              color: context.colorScheme.outline.withValues(alpha: 0.3)),
          const VerticalSpace(height: 20),

          Text(context.l10n.speciality, style: context.textStyles.labelLarge),
          const VerticalSpace(height: 12),
          ChipRow(
            options: specialities,
            selected: selectedSpeciality,
            onSelected: (value) => {},
          ),
          const VerticalSpace(height: 24),

          Text(context.l10n.rating, style: context.textStyles.labelLarge),
          const VerticalSpace(height: 12),
          ChipRow(
            options: ratings,
            selected: selectedRating,
            onSelected: (value) => {},
            showStarIcon: true,
          ),
          const VerticalSpace(height: 28),
          PrimaryButton(
              text: context.l10n.apply,
              onPressed: () => Navigator.of(context).pop()),
          const VerticalSpace(height: 18),
        ],
      ),
    );
  }
}
