import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tile.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          VerticalSpace(height: 25),
          CustomAppBar(
            title: 'Doctor Details',
            trailing: Icon(Icons.more_horiz),
            trailingPadding: 0,
          ),
          VerticalSpace(height: 24),
          DoctorDetailsTile(),
          VerticalSpace(height: 24),
          DoctorDetailsTabBar()
        ],
      ),
    ));
  }
}

class DoctorDetailsTabBar extends StatelessWidget {
  const DoctorDetailsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        isScrollable: false,
        labelPadding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.blue,
        indicatorWeight: 2.5,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        labelStyle: context.textStyles.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: context.textStyles.bodyMedium,
        tabs: const [
          Tab(text: 'About'),
          Tab(text: 'Location'),
          Tab(text: 'Reviews'),
        ],
      ),
    );
  }
}
