import 'package:flutter/material.dart';

import 'customStarting.dart';

Widget buildCardView({
  required String imageUrl,
  required String name,
  required String profession,
  required String jobDetail,
  required double starRating,
  required VoidCallback onPressed,
}) {
  return SizedBox(
    height: 184,
    width: 317,
    child: Card(
      color: const Color.fromRGBO(82, 82, 82, 1),
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      profession,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(204, 204, 204, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Text(
                jobDetail,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            StarRating(starRating),
          ],
        ),
      ),
    ),
  );
}
