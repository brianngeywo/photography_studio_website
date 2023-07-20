import 'package:flutter/material.dart';
import 'package:photography_studio_website/my_works_page.dart';
import 'package:photography_studio_website/portfolio_page.dart';
import 'package:photography_studio_website/test_data.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.17),
          const FlutterLogo(size: 40.0, textColor: Colors.red),
          const SizedBox(width: 8.0),
          const Text(
            'Midway Media',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PortfolioPage(),),);
            },
            child: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyWorks(imageUrls: gridPhotoImages,),),);
            },
            child: const Text(
              'My Works',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              'Social Media',
              style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.17),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
