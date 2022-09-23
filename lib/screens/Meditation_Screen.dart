import 'package:flutter/material.dart';
import 'package:meditationapp/models/item_model.dart';

class MeditationAppScreen extends StatefulWidget {
  @override
  State<MeditationAppScreen> createState() => _MeditationAppScreenState();
}

class _MeditationAppScreenState extends State<MeditationAppScreen> {
  final Item audioItem = Item(
    'forest',
    'meditation_audios/forest.mp3',
    'meditation_images/forest.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}
