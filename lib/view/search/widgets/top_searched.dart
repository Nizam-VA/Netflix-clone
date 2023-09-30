import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/view/search/widgets/search_idle.dart';

class TopSearchedListTile extends StatelessWidget {
  const TopSearchedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 100,
          width: width * .3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imageURL),
            ),
          ),
        ),
        kWidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        const Icon(
          CupertinoIcons.play_circle,
          color: kWhiteColor,
          size: 40,
        )
      ],
    );
  }
}
