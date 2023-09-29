import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(Icons.cast, color: Colors.white, size: 30),
              kWidth,
              Container(color: Colors.blue, width: 30),
              kWidth,
            ],
            bottom: TabBar(
                labelColor: kBlackColor,
                isScrollable: true,
                unselectedLabelColor: kWhiteColor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: kWhiteColor, borderRadius: kBorderRadius30),
                tabs: const [
                  Tab(text: '🍿 Coming Soon'),
                  Tab(text: "👀 Everyone's Watching")
                ]),
          ),
          body: const TabBarView(children: [
            ComingSoonWidget(),
            EveryonesWatchingWidget(),
          ])),
    );
  }
}
