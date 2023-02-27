import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: box.maxWidth,
      color: Colors.red,
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.025,
        vertical: box.maxHeight * 0.02,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search',
            style: TextStyle(
              fontSize: box.maxHeight * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: box.maxHeight * 0.02,
          ),
          Container(
            child: Text('Search input'),
          ),
        ],
      ),
    );
  }
}
