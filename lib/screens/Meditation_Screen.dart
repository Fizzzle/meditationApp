import 'package:flutter/material.dart';
import 'package:meditationapp/models/item_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:just_audio/just_audio.dart';

class MeditationAppScreen extends StatefulWidget {
  const MeditationAppScreen({Key? key}) : super(key: key);

  @override
  State<MeditationAppScreen> createState() => _MeditationAppScreenState();
}

class _MeditationAppScreenState extends State<MeditationAppScreen> {
  final List<Item> items = [
    Item(
      "Forest",
      "meditation_images/forest.jpeg",
      "meditation_audios/forest.mp3",
    ),
    Item(
      "Night",
      "meditation_images/night.jpeg",
      "meditation_audios/night.mp3",
    ),
    Item(
      "Ocean",
      "meditation_images/ocean.jpeg",
      "meditation_audios/ocean.mp3",
    ),
    Item(
      "Waterfall",
      "meditation_images/waterfall.jpeg",
      "meditation_audios/waterfall.mp3",
    ),
    Item(
      "Wind",
      "meditation_images/wind.jpeg",
      "meditation_audios/wind.mp3",
    ),
  ];

  // final AudioPlayer audioPlayer = AudioPlayer();

  int? playingIndex;

  // Widget showIcon(int currentIndex) {
  //   if (playingIndex == currentIndex) {
  //     return FaIcon(FontAwesomeIcons.stop);
  //   } else {
  //     return FaIcon(FontAwesomeIcons.play);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(items[index].imagePath),
                    ),
                  ),
                  child: ListTile(
                    title: Text(items[index].name),
                    leading: IconButton(
                      // icon: showIcon(index),
                      icon: playingIndex == index
                          ? FaIcon(FontAwesomeIcons.stop)
                          : FaIcon(FontAwesomeIcons.play),
                      onPressed: () {
                        if (playingIndex == index) {
                          // audioPlayer.stop();

                          setState(() {
                            playingIndex = null;
                          });
                        } else {
                          // audioPlayer.setAsset(items[index].audioPath);

                          // audioPlayer.play();
                          setState(() {
                            playingIndex = index;
                          });
                        }
                      },
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
