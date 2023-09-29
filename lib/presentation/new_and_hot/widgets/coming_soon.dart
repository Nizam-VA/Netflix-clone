import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_content.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, item) {
        return ComingSoonContentWidget(width: width);
      },
      shrinkWrap: true,
    );
  }
}
