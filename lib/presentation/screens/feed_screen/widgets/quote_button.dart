
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_dictionary/logic/random_word/random_quote_cubit.dart';
import 'package:share_plus/share_plus.dart';

class QuoteButtons extends StatelessWidget {
   final String content;
  final String author;
  const QuoteButtons({
    required this.author,required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            context.read<RandomQuoteCubit>().generate();
          },
          icon: Icon(Icons.replay,
              color: Theme.of(context).primaryColor),
        ),
        IconButton(
          onPressed: () {
            Share.share(
                '$content \n - $author');
          },
          icon: Icon(Icons.ios_share,
              color: Theme.of(context).primaryColor),
        )
      ],
    );
  }
}
