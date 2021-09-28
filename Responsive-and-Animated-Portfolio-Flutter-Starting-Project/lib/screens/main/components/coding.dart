import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progess.dart';
import 'package:flutter_profile/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgress(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgress(
          percentage: 0.7,
          label: "Javacript",
        ),
        AnimatedLinearProgress(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgress(
          percentage: 0.85,
          label: "CSS",
        ),
      ],
    );
  }
}
