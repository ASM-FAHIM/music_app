import 'package:music_player/model/song_model.dart';

class Playlist {
  String title;
  List<Song> songs;
  String desc;
  String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.desc,
    required this.imageUrl,
  });

  static List<Playlist> playList = [
    Playlist(
        title: 'Hip-hop Mix',
        songs: Song.songs,
        desc: 'A song is a single musical composition'
            '\nthat has a melody and,',
        imageUrl: 'assets/images/play1.jpeg'),
    Playlist(
        title: 'Rock & Roll',
        songs: Song.songs,
        desc: 'A song is a single musical composition'
            '\nthat has a melody and,',
        imageUrl: 'assets/images/play2.jpeg'),
    Playlist(
        title: 'Techno',
        songs: Song.songs,
        desc: 'A song is a single musical composition'
            '\nthat has a melody and,',
        imageUrl: 'assets/images/play3.jpeg'),
    Playlist(
      title: 'Dj',
      songs: Song.songs,
      desc: 'A song is a single musical composition'
          '\nthat has a melody and,',
      imageUrl: 'assets/images/play4.jpeg',
    ),
    Playlist(
      title: 'Pop',
      songs: Song.songs,
      desc: 'A song is a single musical composition'
          '\nthat has a melody and,',
      imageUrl: 'assets/images/play5.jpeg',
    ),
    Playlist(
      title: 'Cool',
      songs: Song.songs,
      desc: 'A song is a single musical composition'
          '\nthat has a melody and,',
      imageUrl: 'assets/images/play6.jpeg',
    ),
  ];
}
