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
      description: 'Glass',
      url: 'assets/music/Arabic ringtone.mp3',
      coverUrl: 'assets/images/glass.jpg',
    ),
    Song(
      title: 'Arabic',
      description: 'Arabic',
      url: 'assets/music/Friend ringtone .mp3',
      coverUrl: 'assets/images/arabic.jpg',
    ),
    Song(
      title: 'Jarico',
      description: 'Jarico',
      url: 'assets/music/Jarico Island.mp3',
      coverUrl: 'assets/images/jarico.jpg',
    ),
    Song(
      title: 'GLU',
      description: 'Girls',
      url: 'assets/music/Girls-like-you.mp3',
      coverUrl: 'assets/images/play1.jpeg',
    ),
    Song(
      title: 'Jarico',
      description: 'Jarico',
      url: 'assets/music/Shunno Bedona Acoustic.mp3',
      coverUrl: 'assets/images/play2.jpeg',
    ),
    Song(
      title: 'Jarico',
      description: 'Jarico',
      url: 'assets/music/Meghborone-Tanjib Sarowar-(MuzicBD.Com).mp3',
      coverUrl: 'assets/images/play5.jpeg',
    ),
  ];
}
