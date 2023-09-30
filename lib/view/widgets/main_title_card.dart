import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/model/top_rated/top_rated.dart';
import 'package:netflix/view/widgets/main_card_home.dart';
import 'package:netflix/view/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title, required this.movies});
  final String title;
  final List<TopRated> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(movies.length,
                (index) => MainCardHome(image: movies[index].imagePath)),
          ),
        )
      ],
    );
  }
}
