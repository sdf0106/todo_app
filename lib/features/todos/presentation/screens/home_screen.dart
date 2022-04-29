import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../../../config/theme/text_styles.dart';
import '../../../../config/theme/palette.dart';
import '../../domain/entities/todo.dart';
import '../bloc/todos/todos_bloc.dart';
import '../widgets/task_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Expanded(
          child: BlocConsumer<TodosBloc, TodosState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                loaded: (List<Todo> tasks, String message) {},
                taskAdded: (String message) {
                  if (message == 'Task Added') {
                    context
                        .read<TodosBloc>()
                        .add(const TodosEvent.getAllTasks());
                  }
                },
                taskStatusChanged: (String message) {},
                failure: (String message) {},
                emptyList: () {},
                closeReminderBox: () {},
              );
            },
            builder: (context, state) {
              Widget view = Container();
              state.when(
                initial: () {},
                loading: () => view = const CircularProgressIndicator(
                  color: Palette.malibu,
                ),
                emptyList: () {
                  view = Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/paper.svg'),
                        const SizedBox(height: 70.0),
                        Text(
                          'No Tasks',
                          style: TextStyles.splashText,
                        ),
                      ],
                    ),
                  );
                },
                failure: (String error) {},
                loaded: (List<Todo> tasks, String message) {
                  view = ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final bool isNewDay = index != 0
                          ? _isNewDay(
                              tasks[index].startTime,
                              tasks[index - 1].startTime,
                            )
                          : true;

                      final task = TaskContainer(
                        time: tasks[index].startTime,
                        isDone: tasks[index].isDone,
                        isReminded: tasks[index].isReminded,
                        task: tasks[index].description,
                        type: tasks[index].type,
                        id: tasks[index].id,
                      );

                      return isNewDay
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    DateFormat('MMM d ').format(
                                      tasks[index].startTime,
                                    ),
                                    style: TextStyles.taskMakerFont.copyWith(
                                      color: Palette.butterflyBush,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                task
                              ],
                            )
                          : task;
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 13.0,
                    ),
                    itemCount: tasks.length,
                  );
                },
                taskAdded: (String message) {},
                taskStatusChanged: (String message) {},
                closeReminderBox: () {},
              );
              return view;
            },
          ),
        ),
      ],
    );
  }

  bool _isNewDay(DateTime comparable, DateTime comparator) {
    if (comparable.day < comparator.day || comparable.day > comparator.day)
      return true;
    return false;
  }
}
