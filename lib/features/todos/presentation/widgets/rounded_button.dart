import 'package:flutter/material.dart';

import '../../../../config/theme/palette.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const RoundedButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [
            Palette.brilliantRose,
            Palette.redViolet,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Palette.brilliantRose.withOpacity(0.47),
            blurRadius: 9,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          icon,
          size: 48,
          color: Colors.white,
        ),
      ),
    );
  }
}
