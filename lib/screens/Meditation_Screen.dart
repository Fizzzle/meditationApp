import 'package:flutter/material.dart';
import 'package:meditationapp/models/item_model.dart';

class MeditationAppScreen extends StatefulWidget {
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
                    // leading: IconButton(
                    //   icon: Icon(Icons.play_arrow),
                    //   onPressed: () {},
                    // ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
