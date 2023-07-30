import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/utils/constants.dart';

class TrendingCardWidget extends StatelessWidget {
  const TrendingCardWidget({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: '$imageUrl$url',
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
