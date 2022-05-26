import 'package:flutter/material.dart';

import '../../../config/theme/palette.dart';
import '../../../config/theme/text_styles.dart';

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
