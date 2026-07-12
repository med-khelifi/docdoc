
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class DragHandleContainer extends StatelessWidget {
  const DragHandleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 4,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: context.colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
