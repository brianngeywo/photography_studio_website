import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryGrid extends StatelessWidget {
  final List<String> imageUrls;

  GalleryGrid({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
      child: GridView.custom(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => GalleryTile(index: index, imageUrls: imageUrls),
          childCount: imageUrls.length,
        ),
      ),
    );
  }
}
class GalleryTile extends StatelessWidget {
  final int index;
  final List<String> imageUrls;

  GalleryTile({required this.index, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showImageDialog(context, imageUrls[index]);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CachedNetworkImage(
          imageUrl : imageUrls[index], // Get the image URL from the list using the index
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Image.network(imageUrl), // Display the full-resolution image in the dialog
        );
      },
    );
  }
}
