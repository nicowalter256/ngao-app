import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import 'form_label.dart';

// ignore: must_be_immutable
class CustomDropdown extends StatelessWidget {
  final String label;
  CustomDropdown({super.key, required this.label});

  List<Map<String, dynamic>> idTypes = [
    {"id": 1, "name": "Type 1"},
    {"id": 2, "name": "Type 2"}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormLabel(
          labelText: label,
          isRequired: true,
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 3,
          ),
          decoration: BoxDecoration(
            color: blackBG.withOpacity(.05),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: blackBG.withOpacity(0.4),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: DropdownButton<int>(
                  underline: const SizedBox.shrink(),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  alignment: Alignment.centerRight,
                  focusColor: whiteBG,
                  style: GoogleFonts.mulish(color: blackBG),
                  menuMaxHeight: 500,
                  icon: const SizedBox.shrink(),
                  isExpanded: true,
                  items: List.generate(
                      idTypes.length,
                      (index) => DropdownMenuItem(
                            value: idTypes[index]['id'],
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                idTypes[index]['name'],
                              ),
                            ),
                          )),
                  onChanged: (selected) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  CupertinoIcons.chevron_down_circle_fill,
                  color: blackBG,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
