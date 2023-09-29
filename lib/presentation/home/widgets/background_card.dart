import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';
import 'package:netflix/presentation/home/widgets/play_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: kGreyColor,
              image: DecorationImage(
                  image: NetworkImage(mainImg), fit: BoxFit.cover)),
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
