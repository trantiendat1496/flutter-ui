import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedCouter extends StatelessWidget {
  const AnimatedCouter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: Duration(seconds: 3),
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
