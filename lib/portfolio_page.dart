import 'package:flutter/material.dart';
import 'package:photography_studio_website/company_experience_section.dart';
import 'package:photography_studio_website/my_services_section.dart';
import 'package:photography_studio_website/photo_grid_section.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.17),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/main.jpg',
                ),
              )
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.17),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.7,
                      // child: Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(12.0),
                      //   ),
                      //   color: Colors.black,
                      //   elevation: 8.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Midway Media Production Company'.toUpperCase(),
                            style: const TextStyle(
                              fontFamily: 'Playfair Display',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              child: Divider(
                                color: Colors.redAccent,
                                height: 4,
                                thickness: 5,
                              ),
                              width: 50,
                            ),
                          ),
                          // const Text(
                          //   'Available all over Kenya',
                          //   style: TextStyle(
                          //     // fontSize: 16.0,
                          //     color: Colors.red,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          //   textAlign: TextAlign.left,
                          //   softWrap: true,
                          // ),
                          const SizedBox(height: 16.0),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontFamily: 'Playfair Display',
                              ),
                              textAlign: TextAlign.left,
                              softWrap: true,
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            onPressed: () {},
                            color: Colors.red,
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                'Explore',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.43),
                        ],
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyServicesSection(),
          MyPhotoGridSection(),
          CompanyExperienceSection(),
        ],
      ),
    );
  }
}