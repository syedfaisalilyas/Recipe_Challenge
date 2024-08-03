import 'package:dribble_recipe_challenge/src/core/widget/annotated_scaffold.dart';
import 'package:dribble_recipe_challenge/src/onboarding/widgets/onboarding_body_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedScaffold(child: OnBoardingBodyWidget());
  }
}
