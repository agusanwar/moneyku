import 'package:flutter/material.dart';

class HomeCardInfo extends StatelessWidget {
  final String imageUrl;

  const HomeCardInfo({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
