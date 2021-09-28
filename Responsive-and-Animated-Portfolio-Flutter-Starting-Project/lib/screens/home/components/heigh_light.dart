import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.couter,
    this.label,
  }) : super(key: key);

  final Widget couter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        couter,
        SizedBox(width: defaultPadding / 2),
        Text(label!, style: Theme.of(context).textTheme.subtitle2)
      ],
    );
  }
}
