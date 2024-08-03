// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dribble_recipe_challenge/src/core/widget/annotated_scaffold.dart';
import 'package:dribble_recipe_challenge/src/recipes/presentation/widget/recipe_details/recipe_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:dribble_recipe_challenge/src/recipes/domain/recipe.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../onboarding/widgets/animated_dish_widget.dart';
import '../widget/home_screen/animated_appbar_widget.dart';
import '../widget/recipe_details/animated_info_widget.dart';
import '../widget/recipe_details/time_line_sliding_panel.dart';

class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailsScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedScaffold(
      // assetPath: "assets/images/recipe_details.png",
      child: LayoutBuilder(builder: (context, constraints) {
        final appBarPlayTime = 800.ms;
        final appBarDelayTime = 400.ms;
        final infoDelayTime = appBarPlayTime + appBarDelayTime - 200.ms;
        final infoPlayTime = 500.ms;
        final dishPlayTime = 600.ms;
        return TimeLineSlidingPanel(
            recipe: recipe,
            constraints: constraints,
            body: Column(
              children: [
                // AnimatedAppBarWidget(
                //   avatarWaitingDuration: appBarDelayTime, // Correct parameter
                //   avatarPlayDuration: appBarPlayTime, // Correct parameter
                //   nameDelayDuration: Duration(milliseconds: 300), // Example delay
                //   namePlayDuration: Duration(milliseconds: 500), // Example duration
                // ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                // Correct usage of AnimatedDishWidget
                // AnimatedDishWidget(
                //   dishPlayDuration: dishPlayTime, // Correct parameter
                //   leavesDelayDuration: Duration(milliseconds: 200), // Example delay
                // ),
                SizedBox(
                  height: constraints.maxHeight * 0.06,
                ),
                AnimatedInfoWidget(
                    nutrition: recipe.nutrition,
                    infoDelayTime: infoDelayTime,
                    infoPlayTime: infoPlayTime,
                    constraints: constraints),
              ],
            ));
      }),
    );
  }
}
