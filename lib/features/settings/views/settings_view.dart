import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/core/theme/logic/theme_cubit.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/features/settings/views/widgets/settings_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomAppBar(title: context.l10n.settings),
            const VerticalSpace(height: 32),
            SettingsListTile(
              icon: CupertinoIcons.bell,
              title: context.l10n.notification,
            ),
            SettingsListTile(
              icon: CupertinoIcons.question,
              title: context.l10n.faq,
              onPressed: () => context.push(AppRoutes.faq),
            ),
            SettingsListTile(
              icon: Icons.language,
              title: context.l10n.language,
              onPressed: () => context.push(AppRoutes.languages),
            ),
            BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeMode) {
                final isDark = themeMode == ThemeMode.dark;
                return SettingsListTile(
                  icon: Icons.dark_mode,
                  title: context.l10n.darkMode,
                  trailing: Switch(
                    value: isDark,
                    onChanged: (value) {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}

