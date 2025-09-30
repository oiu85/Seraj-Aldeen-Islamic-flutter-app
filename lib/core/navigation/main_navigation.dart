import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/pages/home_page.dart';
import 'bloc/shared_bloc.dart';
import 'bloc/shared_event.dart';
import 'bloc/shared_state.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  // List of pages for bottom navigation
  final List<Widget> _pages = [
    const HomePage(),

  ];


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SharedBloc, SharedState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.currentPageIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(items: [],),

        );
      },
    );
  }
}


