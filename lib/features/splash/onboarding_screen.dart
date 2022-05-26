import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/features/splash/widgets/action_button.dart';

import '../../config/theme/palette.dart';
import '../../config/theme/text_styles.dart';
import '../todos/presentation/bloc/todos/todos_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.primary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22
              
              ,
            ),
            SvgPicture.asset('assets/images/onboarding.svg'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.14,
            ),
            Text(
              'Reminders Made Simple',
              style: TextStyles.splashText,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ActionButton(
                  context,
                  text: 'Getting Started',
                  onPressed: () {
                    BlocProvider.of<TodosBloc>(context)
                        .add(const TodosEvent.getAllTasks());
                    context.go('/main');
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
          ],
        ),
      ),
    );
  }
}

