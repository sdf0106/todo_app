import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/core/helpers/helper_functions.dart';
import '../../../../config/theme/palette.dart';
import '../../../../config/theme/text_styles.dart';
import '../../../../core/utils/todo_type.dart';
import '../bloc/todos/todos_bloc.dart';

class TaskContainer extends StatelessWidget {
  final DateTime time;
  final String id;
  bool isDone = false;
  bool isReminded = false;
  String task;
  TodoType type;
  TaskContainer({
    Key? key,
    required this.time,
    required this.isDone,
    required this.id,
    required this.isReminded,
    required this.task,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              offset: const Offset(0, 9),
              color: Colors.black.withOpacity(0.05),
            ),
          ],
        ),
        height: 55.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 4.0,
              decoration: BoxDecoration(
                color: HelperFunctions.typeColor(type),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        StatefulBuilder(
                          builder: (
                            BuildContext context,
                            StateSetter setState,
                          ) {
                            return InkWell(
                              onTap: () => setState(
                                () {
                                  isDone = !isDone;
                                  context.read<TodosBloc>().add(
                                        TodosEvent.taskIsDone(
                                          id: id,
                                          status: isDone,
                                        ),
                                      );
                                },
                              ),
                              child: isDone == true
                                  ? SvgPicture.asset(
                                      'assets/images/checked.svg',
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/unchecked.svg',
                                    ),
                            );
                          },
                        ),
                        const SizedBox(width: 11),
                        const Text(
                          '07:00 AM',
                          style: TextStyle(color: Palette.frenchGrey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 190,
                      child: Text(
                        task,
                        style: TextStyles.taskFont.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    StatefulBuilder(
                      builder: (
                        BuildContext context,
                        StateSetter setState,
                      ) {
                        return InkWell(
                          onTap: () => setState(
                            () => isReminded = !isReminded,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/reminder.svg',
                            color: isReminded == true
                                ? Colors.yellow
                                : Colors.grey,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
