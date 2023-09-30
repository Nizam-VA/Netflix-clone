import 'package:flutter/material.dart';
import 'package:netflix/model/top_rated/top_rated.dart';
import 'package:netflix/view/new_and_hot/widgets/every_content.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  EveryonesWatchingWidget({super.key, required this.everyone});
  List<TopRated> everyone;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: everyone.length,
      itemBuilder: (context, index) {
        return EveryonesWatchingContent(
            width: width, topRated: everyone[index]);
      },
    );
  }
}
