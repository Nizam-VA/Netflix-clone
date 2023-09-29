import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';
import 'package:netflix/presentation/search/widgets/top_searched.dart';

final imageURL =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/2bpJtl7GzjeceQJz6YnfMLOhlIU.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(title: 'Top Searches'),
        kHight,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => const TopSearchedListTile(),
                separatorBuilder: (context, index) => const SizedBox(),
                itemCount: 10),
          ),
        )
      ],
    );
  }
}
