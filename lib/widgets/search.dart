import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final Icon prefixIcon;
  final BorderRadius borderRadius;
  final String? labelText;

  const SearchBar(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.prefixIcon,
      required this.borderRadius,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.brown,
      enabled: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
          bottom: 20,
        ),
        prefixIcon: const Icon(
          Icons.password,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 151, 154, 161)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: hintText,
        label: SizedBox(
          width: 135,
          child: Row(
            children: [
              Text(
                labelText ?? 'Search',
                style: const TextStyle(
                  color: Color(0xFF131A2E),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              Container(
                width: 5,
                height: 5,
                margin: const EdgeInsets.only(
                  bottom: 8,
                ),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
