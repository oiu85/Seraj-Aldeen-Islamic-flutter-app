/// USAGE EXAMPLE FOR SOCIAL NETWORKS EXPANDABLE FAB
/// 
/// This file demonstrates how to use the SocialNetworksExpandableFab widget
/// in your Flutter app.
/// 
/// DO NOT include this file in production - it's for reference only.

import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/social_networks.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

/// Example 1: Basic Usage
/// Just add the SocialNetworksExpandableFab as your floatingActionButton
class ExamplePage1 extends StatelessWidget {
  const ExamplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Networks Example 1'),
      ),
      body: Center(
        child: Text('Click the floating action button!'),
      ),
      // IMPORTANT: Use ExpandableFab.location for floatingActionButtonLocation
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: SocialNetworksExpandableFab(),
    );
  }
}

/// Example 2: Customized Colors
/// You can customize the open and close button colors
class ExamplePage2 extends StatelessWidget {
  const ExamplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Networks Example 2'),
      ),
      body: Center(
        child: Text('Customized button colors!'),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: SocialNetworksExpandableFab(
        openButtonColor: Colors.blue,
        closeButtonColor: Colors.red,
        distance: 80.0,
        iconSize: 50.0,
      ),
    );
  }
}

/// Example 3: With Labels
/// Use SocialNetworksExpandableFabWithLabels to show text labels
class ExamplePage3 extends StatelessWidget {
  const ExamplePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Networks Example 3'),
      ),
      body: Center(
        child: Text('With text labels!'),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: SocialNetworksExpandableFabWithLabels(
        openButtonColor: AppColors.primary,
        distance: 75.0,
      ),
    );
  }
}

/// Example 4: Using with AppScaffold
/// Integration with your custom AppScaffold widget
class ExamplePage4 extends StatelessWidget {
  const ExamplePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      appBar: AppBar(
        title: Text('Social Networks Example 4'),
        backgroundColor: AppColors.primary,
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Text(
          'Social Networks with AppScaffold',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: SocialNetworksExpandableFab(),
    );
  }
}

/// HOW TO USE IN YOUR EXISTING PAGES:
/// 
/// 1. Import the widget:
///    import 'package:seraj_aldean_flutter_app/core/shared/widgets/social_networks.dart';
///    import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
/// 
/// 2. Add to your Scaffold:
///    Scaffold(
///      floatingActionButtonLocation: ExpandableFab.location,
///      floatingActionButton: SocialNetworksExpandableFab(),
///      // ... rest of your scaffold
///    )
/// 
/// 3. Customize (optional):
///    SocialNetworksExpandableFab(
///      openButtonColor: AppColors.primary,
///      closeButtonColor: AppColors.secondary,
///      distance: 70.0,  // Distance between buttons
///      iconSize: 48.0,  // Size of social media icons
///    )
/// 
/// 4. Use with labels:
///    SocialNetworksExpandableFabWithLabels()
///

