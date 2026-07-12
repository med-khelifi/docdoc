import 'package:flutter/material.dart';

/// Opens the Sort By bottom sheet.
Future<Map<String, String>?> showBottomSheet(
    {required BuildContext context, required Widget bottomSheet}) {
  return showModalBottomSheet<Map<String, String>>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    elevation: 12,
    builder: (context) => bottomSheet,
  );
}
