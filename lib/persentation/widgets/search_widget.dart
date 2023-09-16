// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.enabled = true,
    this.onSubmited,
  }) : super(key: key);
  final bool? enabled;
  final Function(String value)? onSubmited;

  @override
  Widget build(BuildContext context) {
    TextEditingController searchTextController = TextEditingController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              controller: searchTextController,
              onFieldSubmitted: onSubmited,
              autofocus: true,
              enabled: enabled,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
              decoration: InputDecoration.collapsed(
                hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                hintText: 'Search',
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          InkWell(
            onTap: () {
              onSubmited!(searchTextController.text);
            },
            child: Image.asset(
              'assets/Search.png',
              color: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
    );
  }
}
