class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Glass',
      description: 'Good glass music ever',
      url: 'assets/music/Arabic ringtone.mp3',
      coverUrl: 'assets/images/glass.jpg',
    ),
    Song(
      title: 'Glass',
      description: 'Good glass music ever',
      url: 'assets/music/Friend ringtone .mp3',
      coverUrl: 'assets/images/arabic.jpg',
    ),
    Song(
      title: 'Glass',
      description: 'Good glass music ever',
      url: 'assets/music/Jarico Island.mp3',
      coverUrl: 'assets/images/jarico.jpg',
    ),
  ];
}
