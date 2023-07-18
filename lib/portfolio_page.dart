import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            FlutterLogo(size: 40.0),
            const SizedBox(width: 8.0),
            const Text(
              'Midway Media',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Services',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Team',
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: AssetImage(
                'assets/main.png',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        color: Colors.black.withOpacity(0.2),
                        elevation: 8.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Midway Media Production Company',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                                softWrap: true,
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                'Explore',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
