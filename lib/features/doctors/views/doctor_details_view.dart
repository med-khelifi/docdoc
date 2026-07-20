import 'package:doctorine/core/Functions/show_bottom_sheet.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/rating_bottom_sheet.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tab_bar.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tab_content.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tile.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
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
            DoctorDetailsTabBar(),
            VerticalSpace(height: 24),
            DoctorDetailsTabContent(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 12, left: 12),
        child: PrimaryButton(
          text: "Make An Appointment",
          onPressed: () {
            showAppBottomSheet(
                context: context, bottomSheet: const RatingBottomSheet());
          },
        ),
      ),
    );
  }
}
