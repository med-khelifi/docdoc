import 'package:device_preview/device_preview.dart';
import 'package:doctorine/core/localization/logic/locale_cubit.dart';
import 'package:doctorine/core/router/app_router.dart';
import 'package:doctorine/core/theme/app_dark_theme.dart';
import 'package:doctorine/core/theme/app_light_theme.dart';
import 'package:doctorine/core/theme/logic/theme_cubit.dart';
import 'package:doctorine/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Doctorine extends StatelessWidget {
  const Doctorine({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LocaleCubit()),
      ],
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, localeState) {
          return BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, themeMode) {
              return MaterialApp.router(
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: localeState,
                builder: DevicePreview.appBuilder,
                debugShowCheckedModeBanner: false,
                routerConfig: AppRouter.router,
                themeMode: themeMode,
                theme: AppLightThemes.theme,
                darkTheme: AppDarkTheme.dark,
              );
            },
          );
        },
      ),
    );
  }
}

