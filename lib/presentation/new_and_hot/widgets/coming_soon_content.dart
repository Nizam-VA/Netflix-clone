import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/icon_button.dart';

class ComingSoonContentWidget extends StatelessWidget {
  const ComingSoonContentWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: kGreyColor),
              ),
              Text('11',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kGreyColor)),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          width: width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: width - 50,
                    height: 180,
                    child: Image.network(coming, fit: BoxFit.cover),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: kBlackColor.withOpacity(1),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.speaker_slash_fill)),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButttonWidget(
                          title: 'Remind me', icon: CupertinoIcons.bell),
                      kWidth,
                      IconButttonWidget(
                          title: 'Info', icon: CupertinoIcons.info),
                      kWidth
                    ],
                  )
                ],
              ),
              kHight,
              const Text('Coming on friday'),
              kHight,
              const Text(
                'Tall girl 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHight,
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence --and her relationshp-- into a tailspin',
                style: TextStyle(
                  color: kGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
