import 'package:flutter/material.dart';
import 'package:photography_studio_website/gallery_grid.dart';

import 'app_bar.dart';

class MyWorks extends StatefulWidget {
  final List<String> imageUrls;
  MyWorks({super.key, required this.imageUrls});

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            children: [
              const Text(
                'My Works',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
const SizedBox(height: 16.0),
              const Text(
                'Here are some of my works',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              GalleryGrid(imageUrls: widget.imageUrls),
            ],
          ),
        ),
      ),
    );
  }
}
