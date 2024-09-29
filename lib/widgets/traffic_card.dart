import 'package:flutter/material.dart';

class TrafficTile extends StatelessWidget {
  const TrafficTile({super.key, required this.traffic, required this.prefix});

  final String traffic;
  final Icon prefix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        prefix,
        Text(traffic),
      ],
    );
  }
}
