import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';

import '../../../../gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: Center(child: Column(
        children: [
          Card(
            child: Row(
              children: [
                Column(
                  children: [

                  ],
                ),
                Image.asset(Assets.images.serajAldeenImage.path),
              ],
            ),
          )
        ],
      )),
    );
  }
}
