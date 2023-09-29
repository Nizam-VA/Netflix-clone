import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/downloads_images.dart';

class Section2 extends StatelessWidget {
  Section2({super.key});

  List<String> images = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2bDojliSLzGFwxlqQZodJAXHy7H.jpg',
    'https://www.themoviedb.org/t/p/w1280/lrVHAG1Dg5tGAImyWQjspaTg25r.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/v1YEOdGptCyNxnc4mJSYNd4cE8E.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kHight,
        const Text(
          'We will download a personalized selection of\n movies and shows for you, so there is\n always something to watch on your\n device',
          textAlign: TextAlign.center,
          style: TextStyle(color: kGreyColor, fontSize: 14),
        ),
        SizedBox(
          width: size.width,
          height: size.height * .5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: kGreyColor.withOpacity(.5),
                  radius: size.width * .36,
                ),
              ),
              DownloadsImageWidget(
                image: images[0],
                angle: 20,
                margin: const EdgeInsets.only(left: 130, bottom: 35),
                size: Size(size.width * .4, size.height * .22),
              ),
              DownloadsImageWidget(
                image: images[1],
                angle: -20,
                margin: const EdgeInsets.only(right: 130, bottom: 35),
                size: Size(size.width * .4, size.height * .22),
              ),
              DownloadsImageWidget(
                image: images[2],
                angle: 0,
                margin: const EdgeInsets.only(left: 0, bottom: 5),
                size: Size(size.width * .4, size.height * .26),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
