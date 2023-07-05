import 'package:flutter/material.dart';

class QuoteTile extends StatelessWidget {
  final String content;
  final String author;
  const QuoteTile({
    Key? key,
    required this.content,required this.author
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SelectableText(
        '  $content',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: SelectableText(
        author,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.right,
      ),
    );
  }
}