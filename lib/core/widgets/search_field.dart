import 'package:flutter/material.dart';

import '../constance.dart';
import 'custom_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return  CustomTextField(
      controller: TextEditingController(),
      fiiledColor: true,
      lable: label?? 'Search for Restaurant...',
      prefixIcon: const Icon(
        Icons.location_on_outlined,
        color: Constance.kGreyColor,
      ),
      suffixIcon: const Icon(
        Icons.my_location,
      ),
    );
  }
}
