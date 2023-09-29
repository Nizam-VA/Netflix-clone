import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: 200,
          child: Image.network(coming, fit: BoxFit.cover),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: kBlackColor.withOpacity(1),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.speaker_slash_fill)),
          ),
        ),
      ],
    );
  }
}
