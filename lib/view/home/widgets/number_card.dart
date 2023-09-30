import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(width: 40, height: 150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: kBorderRadius,
                  image: const DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover),
                  color: kWhiteColor,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 25,
          bottom: 33,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 80,
                  color: kBlackColor,
                  decorationColor: kWhiteColor),
            ),
          ),
        )
      ],
    );
  }
}
