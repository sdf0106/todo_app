import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../config/theme/palette.dart';
import '../../../../config/theme/text_styles.dart';

class ReminderBox extends StatelessWidget {
  const ReminderBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 13.0,
        left: 18.0,
        right: 18.0,
      ),
      child: Container(
        height: 107.0,
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 9.0,
          right: 11.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.31),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today Reminder',
                  style: TextStyles.newTaskFont.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Meeting with client',
                  style: TextStyles.timingFont.copyWith(
                    color: Palette.concrete,
                  ),
                ),
                Text(
                  '13:00 PM',
                  style: TextStyles.timingFont.copyWith(
                    color: Palette.concrete,
                  ),
                ),
                const SizedBox(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
                // const SizedBox(
                //   height: 6.0,
                //   width: 28.0,
                // ),
                SvgPicture.asset('assets/images/bell.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
