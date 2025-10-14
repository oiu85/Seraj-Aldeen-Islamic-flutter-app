import 'package:flutter/material.dart';
import 'app_drawer.dart';


class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.backgroundColor,
  });


  factory AppScaffold.home({
    Key? key,
    required Widget body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      appBar: _defaultAppBar(),
      drawer: _defaultDrawer(),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: _defaultBottomBar(),
      backgroundColor: backgroundColor,
    );
  }


  factory AppScaffold.custom({
    Key? key,
    required Widget body,
    PreferredSizeWidget? appBar,
    Widget? drawer,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      appBar: appBar ?? _defaultCustomAppBar(),
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
    );
  }

  factory AppScaffold.clean({
    Key? key,
    required Widget body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
    );
  }


  static PreferredSizeWidget _defaultAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [

      ],
    );
  }

  static Widget _defaultDrawer() {
    return Drawer(child: AppDrawer());
  }

  static Widget _defaultBottomBar() {
    return const SizedBox.shrink(); // Hide bottom bar by default
  }

  static PreferredSizeWidget _defaultCustomAppBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      actions: [
        Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_forward_outlined),
          ),
        ),
      ],
    );
  }
}

