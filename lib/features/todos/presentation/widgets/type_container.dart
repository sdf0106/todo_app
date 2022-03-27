import 'package:flutter/material.dart';

import '../../../../config/theme/text_styles.dart';

class TypeContainer extends StatelessWidget {
  const TypeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159.0,
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 11.0,
            offset: const Offset(0, 7),
            color: const Color(0xFFBBBBBB).withOpacity(0.35),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.amber,
          ),
          const SizedBox(height: 7.0),
          Text(
            'Personal',
            style: TextStyles.taskScreen,
          ),
        ],
      ),
    );
  }
}
