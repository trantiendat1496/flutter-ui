import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Link extends StatelessWidget {
  const Link({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        TextButton(
          onPressed: () {},
          child: Row(children: [
            Text(
              "DOWNLOAD CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg"),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: defaultPadding),
          color: Color(0xFF24242E),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/linkedin.svg"),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/github');
                },
                icon: SvgPicture.asset("assets/icons/github.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/twitter.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/behance.svg"),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
