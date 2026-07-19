import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/doctors/logic/doctor_details_tab_cubit/doctor_details_tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorDetailsTabContent extends StatelessWidget {
  const DoctorDetailsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorDetailsTabCubit, int>(
      builder: (context, selectedIndex) {
        switch (selectedIndex) {
          case 0:
            return const AboutTabContent();
          case 1:
            return const LocationTabContent();
          case 2:
            return const ReviewsTabContent();
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

class AboutTabContent extends StatelessWidget {
  const AboutTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Doctor',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            '''
Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.
    ''',
            style: context.textStyles.bodyMedium,
          ),
          Text(
            'Working Time',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            'Monday - Friday, 08.00 AM - 20.00 PM',
            style: context.textStyles.bodyMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            'STR',
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            '4726482464',
            style: context.textStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class LocationTabContent extends StatelessWidget {
  const LocationTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: context.textStyles.titleMedium,
        ),
        const VerticalSpace(height: 8),
        Text(
          'Dr. Randy Wigham is a highly skilled and experienced medical professional specializing in cardiology. With over 15 years of practice, he has helped countless patients achieve better heart health through personalized treatment plans and compassionate care.',
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}

class ReviewsTabContent extends StatelessWidget {
  const ReviewsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: context.textStyles.titleMedium,
        ),
        const VerticalSpace(height: 8),
        Text(
          'Dr. Randy Wigham is a highly skilled and experienced medical professional specializing in cardiology. With over 15 years of practice, he has helped countless patients achieve better heart health through personalized treatment plans and compassionate care.',
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}
