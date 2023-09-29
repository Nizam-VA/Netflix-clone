import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/icon_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWatchingContent extends StatelessWidget {
  const EveryonesWatchingContent({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHight,
          const Text(
            'Tall girl 2',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          kHight,
          const Text(
            'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence --and her relationshp-- into a tailspin',
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
          kHight50,
          VideoWidget(width: width),
          kHight,
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButttonWidget(title: 'Share ', icon: CupertinoIcons.share),
              kWidth,
              IconButttonWidget(title: 'My list ', icon: CupertinoIcons.add),
              kWidth,
              IconButttonWidget(
                  title: 'Play', icon: CupertinoIcons.play_arrow_solid),
              kWidth
            ],
          )
        ],
      ),
    );
  }
}
