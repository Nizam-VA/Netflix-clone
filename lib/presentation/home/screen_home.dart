import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

const image =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/51tqzRtKMMZEYUpSYkrUE7v9ehm.jpg';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

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
                    children: const [
                      BackgroundCard(),
                      MainTitleCard(title: 'Release in the past year'),
                      MainTitleCard(title: 'Trending Now'),
                      NumberTitleCard(),
                      MainTitleCard(title: 'Tense Dramas'),
                      MainTitleCard(title: 'South Indian Cinima'),
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
