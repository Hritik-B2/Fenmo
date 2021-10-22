import 'package:flutter/cupertino.dart';

import 'creator_suggestion.dart';

class CreatorsSection extends StatelessWidget {
  const CreatorsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CreatorsSuggestion(),
        ));
  }
}
