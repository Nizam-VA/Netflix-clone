import 'package:flutter/material.dart';
import 'package:netflix/controller/top_rated/top_rated_services.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/model/top_rated/top_rated.dart';
import 'package:netflix/view/downloads/widgets/downloads_images.dart';

class Section2 extends StatefulWidget {
  Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  List<TopRated> downloadImages = [];
  Future getAllMovies() async {
    downloadImages = await getTopRatedMovies();
    setState(() {});
  }

  @override
  void initState() {
    getAllMovies();
    super.initState();
  }

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
                image: imageBase + downloadImages[0].imagePath,
                angle: 20,
                margin: const EdgeInsets.only(left: 130, bottom: 35),
                size: Size(size.width * .4, size.height * .22),
              ),
              DownloadsImageWidget(
                image: imageBase + downloadImages[1].imagePath,
                angle: -20,
                margin: const EdgeInsets.only(right: 130, bottom: 35),
                size: Size(size.width * .4, size.height * .22),
              ),
              DownloadsImageWidget(
                image: imageBase + downloadImages[2].imagePath,
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
