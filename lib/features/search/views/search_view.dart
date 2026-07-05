import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/core/widgets/om_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            const VerticalSpace(height: 20),
            const CustomAppBar(title: "search"),
            const VerticalSpace(height: 25),
            const CustomSearchTextField(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
