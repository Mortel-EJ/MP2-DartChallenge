//based lang din tong explanation ko sir sa pagkaka alam ko hindi textbox pagkakapaliwanag pero sana maintindihan mo sir bwhahah

import 'dart:math'; //di ko alam sir bat nasa initial code to na naka provide, di ko naman nagamit. pero sama ko na since nakalagay naman to sa initial code

// Gawa ng class Song kung saan ito po yung hahawak ng values ng Song which is yung title at artist lang yung kinukuha
class Song {
  String title;
  String artist;

  //constructor
  Song(this.title, this.artist);

  // Method sir para makuha yung bawat information para sa song
  String getInfo() {
    return 'Title: $title, Artist: $artist'; //bale i rereturn siya na naka format na pag tinawag yung method
  }
}

//Playlist class para sa paggawa ng playlist at kung saan ilalagay yung mga song
class Playlist {
  String name;
  List<Song> songs; //naka list para yung mga song is hindi lang limited, para may maiba, madagdag, mas mashoshow nang maayos

  //Constructor
  Playlist(this.name) : songs = [];

  // Method sa pag dagdag ng song
  void addSong(Song song) {
    songs.add(song);
  }

  // Method para makuha yung mga title sa playlist
  List<String> getSongTitles() {
    return songs.map((song) => song.title).toList();
  }

  // Method para makuha yung info sa playlist
  String getPlaylistInfo() {
    return songs.map((song) => song.getInfo()).join('\n');
  }
}

class MusicFestival {
  String name;
  List<Playlist> stages;

  //Constructor
  MusicFestival(this.name) : stages = [];

  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  String getFestivalInfo() {
    return 'Festival: $name\n\n' + stages.map((playlist) => 'Stage: ${playlist.name}\n${playlist.getPlaylistInfo()}').join('\n\n');
  }
}

void main() {
  print('Welcome to the Music Festival Playlist Manager!');

  // hard coded na pag lagay ng song with some popular K-pop hits
  Song song1 = Song('Butter', 'BTS');
  Song song2 = Song('Loco', 'ITZY');
  Song song3 = Song('Love Scenario', 'iKON');
  Song song4 = Song('DDU-DU DDU-DU', 'BLACKPINK');
  Song song5 = Song('Feel Special', 'TWICE');
  Song song6 = Song('Genius', 'Genius (BTS)');
  Song song7 = Song('Hype Boy', 'NewJeans');
  Song song8 = Song('Wannabe', 'ITZY');
  Song song9 = Song('Dynamite', 'BTS');
  Song song10 = Song('How You Like That', 'BLACKPINK');
  Song song11 = Song('After Like', 'IVE');
  Song song12 = Song('Next Level', 'aespa');
  Song song13 = Song('I Am The Best', '2NE1');
  Song song14 = Song('Zimzalabim', 'Red Velvet');
  Song song15 = Song('Savage Love', 'BTS (feat. Jawsh 685)');

  // Gawa ng playlist para stages
  Playlist stage1 = Playlist('Stage 1');
  Playlist stage2 = Playlist('Stage 2');
  Playlist stage3 = Playlist('Stage 3');

  //manually add bawat isang song sa play list
  stage1.addSong(song1);
  stage1.addSong(song2);
  stage1.addSong(song3);
  stage1.addSong(song4);
  stage1.addSong(song5);
  stage2.addSong(song6);
  stage2.addSong(song7);
  stage2.addSong(song8);
  stage2.addSong(song9);
  stage2.addSong(song10);
  stage3.addSong(song11);
  stage3.addSong(song12);
  stage3.addSong(song13);
  stage3.addSong(song14);
  stage3.addSong(song15);

  // music festival kung saan ilalagay bawat stage
  MusicFestival festival = MusicFestival('Summer Fest');
  festival.addStage(stage1);
  festival.addStage(stage2);
  festival.addStage(stage3);

  // print ng info ng festival
  print(festival.getFestivalInfo());
}
