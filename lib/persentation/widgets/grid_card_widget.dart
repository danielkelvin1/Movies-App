import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GridCardWidget extends StatelessWidget {
  const GridCardWidget({super.key, required this.url});
  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: url != null
            ? url!
            : 'https://st4.depositphotos.com/14953852/22772/v/450/depositphotos_227724992-stock-illustration-image-available-icon-flat-vector.jpg',
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
