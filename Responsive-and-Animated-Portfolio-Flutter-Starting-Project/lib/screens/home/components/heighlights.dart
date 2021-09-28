import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_couter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      couter: AnimatedCouter(value: 100, text: "K+"),
                      label: "Subcribers",
                    ),
                    HeighLight(
                      couter: AnimatedCouter(value: 40, text: "+"),
                      label: "Video",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      couter: AnimatedCouter(value: 90, text: "+"),
                      label: "Animation",
                    ),
                    HeighLight(
                      couter: AnimatedCouter(value: 80, text: "+"),
                      label: "Github Project",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  couter: AnimatedCouter(value: 100, text: "K+"),
                  label: "Subcribers",
                ),
                HeighLight(
                  couter: AnimatedCouter(value: 40, text: "+"),
                  label: "Video",
                ),
                HeighLight(
                  couter: AnimatedCouter(value: 90, text: "+"),
                  label: "Animation",
                ),
                HeighLight(
                  couter: AnimatedCouter(value: 80, text: "+"),
                  label: "Github Project",
                ),
              ],
            ),
    );
  }
}
