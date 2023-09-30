import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/view/home/widgets/custom_button.dart';
import 'package:netflix/view/home/widgets/play_button.dart';
import 'package:netflix/view/search/widgets/search_idle.dart';

class BackgroundCard extends StatelessWidget {
  BackgroundCard({super.key, required this.imageUrl});

  String imageUrl;
  String imageBase = 'https://image.tmdb.org/t/p/w355_and_h200_multi_faces/';

  @override
  Widget build(BuildContext context) {
    imageUrl = imageBase + imageUrl;
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
              color: kGreyColor,
              image: DecorationImage(
                  image: NetworkImage(imageURL), fit: BoxFit.fill)),
        ),
        const Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(icon: Icons.add, title: 'My List'),
              PlayButtonWidget(),
              CustomButtonWidget(icon: Icons.info, title: 'Info')
            ],
          ),
        )
      ],
    );
  }
}
