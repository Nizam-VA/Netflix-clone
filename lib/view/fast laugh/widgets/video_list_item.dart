import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/view/search/widgets/search_result.dart';
import 'package:video_player/video_player.dart';

class VideoListItemWidget extends StatefulWidget {
  final int index;
  final String videoUrl;
  VideoListItemWidget({super.key, required this.index, required this.videoUrl});

  @override
  State<VideoListItemWidget> createState() => _VideoListItemWidgetState();
}

class _VideoListItemWidgetState extends State<VideoListItemWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((value) {
            setState(() {
              _videoPlayerController.play();
            });
          });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _videoPlayerController.value.isPlaying
              ? VideoPlayer(_videoPlayerController)
              : Container(
                  color: Colors.accents[widget.index],
                ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: kBlackColor.withOpacity(.8),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.speaker_slash_fill)),
                ),

                //right side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                    VideoActions(icon: Icons.emoji_emotions, title: 'Lol'),
                    VideoActions(icon: Icons.add, title: 'Add List'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(
                        icon: CupertinoIcons.play_circle, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(icon, color: kWhiteColor, size: 30),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
