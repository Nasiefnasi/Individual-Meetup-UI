import 'package:flutter/material.dart';

class SearchMeetUp extends StatelessWidget {
  const SearchMeetUp({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: mediaqury.width * 0.9,
        height: mediaqury.height * .05,
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: const Icon(
              Icons.mic_none_outlined,
              color: Colors.black,
            ),
            prefixIcon: const Icon(
              Icons.search_sharp,
              color: Colors.black,
            ),
            hintText: "Search",
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }
}
