import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            const Image(
              image: AssetImage('assets/images/note.jpg'),
            ),
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

class ActionButton extends Container {
  ActionButton(
    BuildContext context, {
    Key? key,
    required String text,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          height: 56.0,
          width: MediaQuery.of(context).size.width * 0.688,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Palette.lima.withOpacity(0.53),
                blurRadius: 30.0,
                spreadRadius: 5.0,
              ),
            ],
            gradient: const LinearGradient(colors: [
              Palette.lima,
              Palette.limeade,
            ]),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Material(
            color: Colors.white.withOpacity(0),
            borderRadius: BorderRadius.circular(10.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: onPressed,
              child: Center(
                child: Text(
                  text,
                  style: TextStyles.buttonFont,
                ),
              ),
            ),
          ),
        );
}
