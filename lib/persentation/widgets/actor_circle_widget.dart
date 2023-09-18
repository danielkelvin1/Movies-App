// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ActorCircleWidget extends StatelessWidget {
  const ActorCircleWidget({
    Key? key,
    required this.imageCircle,
    required this.titleCirlce,
  }) : super(key: key);
  final String imageCircle;
  final String titleCirlce;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
              imageCircle,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
          width: MediaQuery.of(context).size.width,
        ),
        Text(
          titleCirlce,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
