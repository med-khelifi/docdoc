import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

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
        ],
      ),
    ));
  }
}
