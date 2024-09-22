// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:website/Screens/Components/header.dart';
import 'package:website/Screens/components/banner_section.dart';
import 'package:website/constant.dart';
import 'package:website/models/responsive.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Header(),
                SizedBox(
                  height: 20,
                ),
                Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
