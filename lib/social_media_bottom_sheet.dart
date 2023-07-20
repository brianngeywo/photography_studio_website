import 'package:flutter/material.dart';

class SocialMediaBottomSheet extends StatelessWidget {
  final List<SocialMediaLink> socialMediaLinks;

  const SocialMediaBottomSheet({super.key, required this.socialMediaLinks});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: socialMediaLinks.map((link) {
          return IconButton(
            icon: Icon(link.icon, color: link.color),
            onPressed: () {
              // Add your social media link handling logic here
            },
          );
        }).toList(),
      ),
    );
  }
}

class SocialMediaLink {
  final IconData icon;
  final String name;
  final Color color;

  SocialMediaLink({required this.color, required this.icon, required this.name});
}