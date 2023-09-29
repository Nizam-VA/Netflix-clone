import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/screen_home.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 120,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          color: kWhiteColor,
        ),
      ),
    );
  }
}
