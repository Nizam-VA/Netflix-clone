import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot/widgets/every_content.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return EveryonesWatchingContent(width: width);
      },
    );
  }
}
