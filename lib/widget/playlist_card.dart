import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/playList_model.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playList,
  }) : super(key: key);

  final Playlist playList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          '/playList',
          arguments: playList,
        );
      },
      child: Container(
        height: 80,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade800.withOpacity(0.6),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                playList.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${playList.songs.length}"),
                  Text(
                    playList.title,
                  ),
                  Text(playList.desc),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
