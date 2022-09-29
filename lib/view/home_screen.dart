import 'package:flutter/material.dart';
import 'package:music_player/model/playList_model.dart';
import '../model/song_model.dart';
import '../widget/playlist_card.dart';
import '../widget/section_header.dart';
import '../widget/song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playList = Playlist.playList;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _DiscoverMusic(),
              _TrendingMusic(songs: songs),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SectionHeader(title: 'Playlist'),
                    ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 10),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: playList.length,
                        itemBuilder: (context, index) {
                          return PlaylistCard(playList: playList[index]);
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: SectionHeader(
              title: 'Trading Music',
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return SongCard(song: songs[index]);
                }),
          ),
        ],
      ),
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome', style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: 5,
          ),
          Text(
            'Enjoy your favourite music',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              helperStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.grey.shade400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  const _CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded), label: 'Favourite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_outlined), label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded), label: 'profile'),
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://blog.logrocket.com/wp-content/uploads/2022/01/handling-network-connectivity-flutter.png',
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(53.0);
}
