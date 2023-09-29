import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      onPressed: () {},
      icon:
          const Icon(CupertinoIcons.play_circle, color: kBlackColor, size: 30),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
              color: kBlackColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
