import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/area_info_text.dart';
import 'package:flutter_profile/screens/main/components/knowledge.dart';
import 'package:flutter_profile/screens/main/components/link.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'coding.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(title: "Country", text: "Viet Nam"),
                    AreaInfoText(title: "City", text: "Ha Noi"),
                    AreaInfoText(title: "Age", text: "25"),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledge(),
                    Link(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
