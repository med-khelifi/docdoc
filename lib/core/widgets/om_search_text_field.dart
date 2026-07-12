import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField(
      {super.key, this.isFilterEnabled, this.onFilterPressed});
  final bool? isFilterEnabled;
  final VoidCallback? onFilterPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: context.textStyles.bodyMedium,
            decoration: const InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: AppColors.grey,
                size: 32,
              ),
            ),
          ),
        ),
        if (isFilterEnabled ?? true) ...[
          const HorizontalSpace(width: 8),
          GestureDetector(
            onTap: onFilterPressed,
            child: Icon(
              Icons.filter_list_outlined,
              color: context.colorScheme.tertiary,
              size: 32,
            ),
          )
        ]
      ],
    );
  }
}
