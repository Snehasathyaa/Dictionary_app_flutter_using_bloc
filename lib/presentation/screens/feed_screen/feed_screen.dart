import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_dictionary/core/constants/strings.dart';
import 'package:one_dictionary/logic/random_word/random_quote_cubit.dart';
import 'package:one_dictionary/presentation/screens/common/widgets/loading_widgets.dart';
import 'package:one_dictionary/presentation/screens/feed_screen/widgets/quote_button.dart';
import 'package:share_plus/share_plus.dart';

import 'widgets/quote_tile.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: BlocBuilder<RandomQuoteCubit, RandomQuoteState>(
        builder: (context, state) {
          return state.data != null
              ? Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuoteTile(
                          author: state.data?.author ?? '',
                          content: state.data?.content ?? ''),
                      QuoteButtons(
                          author: state.data?.author ?? '',
                          content: state.data?.content ?? ''),
                    ],
                  ),
                )
              : LoadingWidget();
        },
      ),
    ));
  }
}

