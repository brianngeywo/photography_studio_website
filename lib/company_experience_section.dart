import 'package:flutter/material.dart';
import 'package:photography_studio_website/test_data.dart';

class CompanyExperienceSection extends StatelessWidget {
  const CompanyExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32.0),
      color: Colors.grey[200],
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width * 0.66,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SectionOne(),
            ),
            SectionTwo(),
          ],
        ),
      ),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Our Experience',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 50,
              child: Divider(
                color: Colors.redAccent,
                height: 4,
                thickness: 5,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text("We believe every shot taken should be a masterpiece.", style: TextStyle(fontSize: 20.0, color: Colors.black,),),
          const SizedBox(height: 16.0),
          const Text(
                'We are a team of photographers and videographers who are passionate about capturing the best moments of your life. '
                    'We are based in Eldoret Town, Kenya and are available to travel worldwide.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut felis vel erat eleifend pretium in ac mi.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut felis vel erat eleifend pretium in ac mi.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut felis vel erat eleifend pretium in ac mi.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut felis vel erat eleifend pretium in ac mi.',
            // style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Service Categories',
            style: TextStyle(
              fontSize: 20.0,
            color: Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var chunk in _splitListIntoChunks(expertiseList, 4))
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: chunk.map((e) => categoryListWidgetItem(title: e)).toList(),
                    ),
                  ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.all(8.0),
      elevation: 8.0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(32.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
         borderRadius: BorderRadius.circular(12.0),
          image: const DecorationImage(
            image: AssetImage('assets/brush.jpg',),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(40.0),
          child: SquareNetworkImage(
           imageUrl: 'https://images.unsplash.com/photo-1502982720700-bfff97f2ecac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
//
// class StarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200.0,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/brush.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Center(
//         child: Image.asset(
//           'assets/star.png',
//           width: 100.0,
//           height: 100.0,
//         ),
//       ),
//     );
//   }
// }

class SquareNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const SquareNetworkImage({
    required this.imageUrl,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(
        width: size,
        height: size,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(imageUrl, fit: BoxFit.cover, width: size, height: size,
          ),
        ),
      ),
    );
  }
}

Widget categoryListWidgetItem(
{
required String title
}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child:Row(
      children: [
        Icon(Icons.check, color: Colors.green, weight:16.0,),
        SizedBox(width: 5,),
        Text(title),
      ],
    ),
  );
}

List<List<T>> _splitListIntoChunks<T>(List<T> list, int chunkSize) {
  List<List<T>> chunks = [];
  for (int i = 0; i < list.length; i += chunkSize) {
    chunks.add(list.sublist(i, i + chunkSize > list.length ? list.length : i + chunkSize));
  }
  return chunks;
}