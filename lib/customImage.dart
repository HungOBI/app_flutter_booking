import 'package:flutter/material.dart';

Widget buildImage({String? imageUrl, String? assetPath, String? title}) {
  if (imageUrl != null && imageUrl.isNotEmpty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 94.15,
          height: 94.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 13.45,
        ),
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );
  } else if (assetPath != null && assetPath.isNotEmpty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 94.15,
          height: 94.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 13.45,
        ),
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );
  } else {
    // If neither imageUrl nor assetPath is provided, display an icon image
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 94.15,
          height: 94.15,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(
                217, 217, 217, 1), // Customize the color as needed
          ),
          child: const Icon(
            Icons.image,
            color: Colors.white, // Customize the color as needed
          ),
        ),
        const SizedBox(
          height: 13.45,
        ),
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
