import 'package:music_player/model/song_model.dart';

class Playlist {
  String title;
  List<Song> songs;
  String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  List<Playlist> playList = [
    Playlist(
        title: 'Hip-hop Mix',
        songs: Song.songs,
        imageUrl: 'assets/images/play1.jpeg'),
    Playlist(
        title: 'Rock & Roll',
        songs: Song.songs,
        imageUrl: 'assets/images/play2.jpeg'),
    Playlist(
        title: 'Techno',
        songs: Song.songs,
        imageUrl: 'assets/images/play3.jpeg'),
    Playlist(
        title: 'Dj', songs: Song.songs, imageUrl: 'assets/images/play4.jpeg'),
    Playlist(
        title: 'Pop', songs: Song.songs, imageUrl: 'assets/images/play5.jpeg'),
    Playlist(
        title: 'Cool', songs: Song.songs, imageUrl: 'assets/images/play6.jpeg'),
  ];
}
