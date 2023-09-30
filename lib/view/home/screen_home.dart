import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/controller/popular/popular_service.dart';
import 'package:netflix/controller/top_rated/top_rated_services.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/model/popular/popular.dart';
import 'package:netflix/model/top_rated/top_rated.dart';
import 'package:netflix/view/home/widgets/background_card.dart';
import 'package:netflix/view/home/widgets/number_title_card.dart';
import 'package:netflix/view/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<TopRated> topRated = [];
  List<Popular> popular = [];
  Future getAllMovies() async {
    topRated = await getTopRatedMovies();
    popular = await getAllPopular();
    setState(() {});
  }

  @override
  void initState() {
    getAllMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, direction, _) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackgroundCard(imageUrl: topRated[2].imagePath),
                      MainTitleCard(
                          movies: topRated, title: 'Release in the past year'),
                      MainTitleCard(movies: topRated, title: 'Trending Now'),
                      NumberTitleCard(),
                      MainTitleCard(movies: topRated, title: 'Tense Dramas'),
                      MainTitleCard(
                          movies: topRated, title: 'South Indian Cinema'),
                    ],
                  ),
                  scrollNotifier.value
                      ? AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 90,
                          width: double.infinity,
                          color: kBlackColor.withOpacity(.2),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(netflix, width: 60, height: 60),
                                  const Spacer(),
                                  const Icon(Icons.cast,
                                      color: Colors.white, size: 30),
                                  kWidth,
                                  Container(
                                      color: Colors.blue,
                                      height: 30,
                                      width: 30),
                                  kWidth,
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tv Shows', style: textStyleHomeTitle),
                                  Text('Movies', style: textStyleHomeTitle),
                                  Text('Categories', style: textStyleHomeTitle)
                                ],
                              )
                            ],
                          ),
                        )
                      : kHight
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
