import 'package:flutter/material.dart';

class MyServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.only(top: 32.0, left: 16, right: 16, bottom: 16.0),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ServiceItem(
              icon: "audio-image",
              title: 'Audio Recording',
              description:
                  'Capture the magic of sound and elevate your project with our pristine audio recording service. Immerse your audience in a world of rich melodies and crystal-clear vocals that will leave them spellbound',
            ),
            ServiceItem(
              icon: "video-image",
              title: 'Video Shooting',
              description:
              'Lights, camera, action! Unleash your vision and let our expert videographers craft cinematic masterpieces. With our state-of-the-art equipment and artistic finesse, we transform your moments into unforgettable stories that mesmerize and inspire.',
            ),
            ServiceItem(
              icon: "photo-image",
              title: 'Photo Shooting',
              description:
              'Time stands still, but memories should last a lifetime. Our skilled photographers have a keen eye for detail and a passion for capturing the essence of every moment. Let us create breathtaking images that speak volumes and transport you back to cherished memories.',
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  ServiceItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/illustrations/$icon.png',),
              width: 64.0,
              height: 64.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            const SizedBox(
              width: 50,
              child: Divider(
                color: Colors.redAccent,
                height: 4,
                thickness: 5,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                  fontFamily: 'Playfair Display',
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}