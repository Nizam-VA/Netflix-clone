import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.all(8),
              backgroundColor: kGreyColor.withOpacity(.4),
              prefixIcon: Icon(CupertinoIcons.search, color: kGreyColor),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: kGreyColor),
              style: const TextStyle(color: kWhiteColor),
            ),
            kHight,
            // const Expanded(child: SearchIdleWidget()),
            const Expanded(child: SearchResultWidget()),
          ],
        ),
      )),
    );
  }
}
