import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/helper_functions.dart';

import '../../../../config/theme/text_styles.dart';
import '../../../../core/utils/todo_type.dart';

class TypeContainer extends StatelessWidget {
  final TodoType type;
  final int index;
  const TypeContainer({
    Key? key,
    required this.type,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.424,
      height: MediaQuery.of(context).size.height * 0.22,
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
          CircleAvatar(
            radius: 30.0,
            backgroundColor:
                HelperFunctions.typeColor(type).withOpacity(0.36),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/${HelperFunctions.typeName(type).toLowerCase()}.svg',
              ),
            ),
          ),
          const SizedBox(height: 7.0),
          Text(
            HelperFunctions.typeName(type),
            style: TextStyles.taskScreen,
          ),
        ],
      ),
    );
  }
}
