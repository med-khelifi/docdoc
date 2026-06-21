import 'package:doctorine/features/home/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeViewAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}

