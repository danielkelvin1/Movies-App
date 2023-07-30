import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    this.enabled,
  });
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              enabled: enabled,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSurface),
              decoration: InputDecoration.collapsed(
                hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                hintText: 'Search',
              ),
            ),
          ),
          Image.asset('assets/Search.png')
        ],
      ),
    );
  }
}
