import 'package:flutter/material.dart';
import '../../../../config/theme/text_styles.dart';
import '../widgets/type_container.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 13.0),
            Text(
              'Projects',
              style: TextStyles.dateFont.copyWith(
                color: const Color(0xFF8B87B3),
              ),
            ),
            const SizedBox(height: 30.0),
            const TypeContainer(),
          ],
        ),
      ),
    );
  }
}
