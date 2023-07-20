import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photography_studio_website/test_data.dart';

class MyPhotoGridSection extends StatelessWidget {
  const MyPhotoGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.only(top: 32.0),
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
        itemCount: photoImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
        ),
        itemBuilder: (context, index) => ImageWithTextOverlay(
          image: photoImages[index],
          text: 'Category ${index + 1}',
        ),
      ),
    );
  }
}

class ImageWithTextOverlay extends StatelessWidget {
  final String image;
  final String text;
  const ImageWithTextOverlay({super.key, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image background
        Positioned.fill(
          child: SizedBox(
            height:double.infinity,
            child: Image.network(
              image ,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Darkened overlay
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.4), // Adjust the opacity as desired
          ),
        ),
        // Text overlay
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}