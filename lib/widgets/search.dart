import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  /// Search field & icon
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          /// Search Field
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          const SizedBox(
            width: 10,
          ),

          /// icon
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Icon(
              Icons.tune_rounded,
              color: Colors.white,
              fill: 1,
            ),
          )
        ],
      ),
    );
  }
}
