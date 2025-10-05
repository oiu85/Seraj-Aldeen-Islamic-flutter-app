import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';

import '../widgets/book_desc_card.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          DecorationAppBar(title: "كتب الإمام"),
          BookDescCard(),
        ],
      ),
    );
  }
}
