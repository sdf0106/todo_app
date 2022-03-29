import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:todo_app/core/helpers/helper_functions.dart';
import 'package:todo_app/features/todos/presentation/bloc/todos/todos_bloc.dart';
import 'package:todo_app/features/todos/presentation/widgets/rounded_button.dart';

import '../../../../config/theme/palette.dart';
import '../../../../config/theme/text_styles.dart';
import '../../../../core/utils/todo_type.dart';
import '../../domain/entities/todo.dart';

class ShowModalContent extends StatefulWidget {
  const ShowModalContent({Key? key}) : super(key: key);

  @override
  State<ShowModalContent> createState() => _ShowModalContentState();
}

class _ShowModalContentState extends State<ShowModalContent> {
  late TextEditingController _controller;
  final TimeOfDay _time = TimeOfDay.now();
  DateTime _startingDateTime = DateTime.now();
  DateTime _endingDateTime = DateTime.now().add(const Duration(hours: 1));

  int id = 0;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.84,
          padding: const EdgeInsets.symmetric(
            horizontal: 21.0,
            vertical: 44.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add new task',
                style: TextStyles.dateFont,
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: _controller,
                cursorColor: Palette.mineShaft,
                cursorHeight: 26.0,
                style: TextStyles.newTaskFont,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 16.0),
              const Divider(
                height: 16.0,
                thickness: 1.0,
                color: Palette.alto,
              ),
              SizedBox(
                height: 40.0,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: id == index
                          ? const EdgeInsets.symmetric(
                              horizontal: 11.0,
                              vertical: 10.0,
                            )
                          : const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        color: id == index
                            ? HelperFunctions.typeColor(TodoType.values[index])
                            : Colors.white.withOpacity(0.0),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          if (id == index)
                            BoxShadow(
                              color: HelperFunctions.typeColor(
                                      TodoType.values[index])
                                  .withOpacity(0.5),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          id = index;
                        }),
                        child: Row(
                          children: [
                            if (id != index)
                              Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HelperFunctions.typeColor(
                                    TodoType.values[index],
                                  ),
                                ),
                              ),
                            if (id != index)
                              const SizedBox(
                                width: 5.0,
                              ),
                            Text(
                              HelperFunctions.typeName(
                                TodoType.values[index],
                              ),
                              style: TextStyles.typeFont.copyWith(
                                color: id == index ? Colors.white : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 12.0,
                    );
                  },
                ),
              ),
              const Divider(
                height: 26.0,
                thickness: 1.0,
                color: Palette.alto,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose date',
                  style: TextStyles.dateFont.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 33.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => pickDateTime(context),
                  child: Text(
                    '${getTime(_startingDateTime)} - ${getTime(_endingDateTime)}',
                    style: TextStyles.dateFont,
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              addTaskButton(
                context,
                () {
                  context.read<TodosBloc>().add(
                        TodosEvent.addTask(
                          todo: Todo(
                            id: DateTime.now().toString(),
                            description: _controller.text,
                            startTime: _startingDateTime,
                            endTime: _endingDateTime,
                            type: TodoType.values[id],
                            isDone: false,
                            isReminded: false,
                          ),
                        ),
                      );
                  Navigator.pop(context);
                  // context.read<TodosBloc>().add(const TodosEvent.getAllTasks());
                },
              ),
            ],
          ),
        ),
        Positioned(
          top: -32.0,
          child: RoundedButton(
            icon: Icons.close_rounded,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  Widget addTaskButton(BuildContext context, VoidCallback onPressed) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26.0,
        ),
        child: Container(
          width: double.infinity,
          height: 52.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: const LinearGradient(
              colors: [
                Palette.malibu,
                Palette.conrflower,
              ],
            ),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white.withOpacity(0.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(5.0),
              onTap: onPressed,
              child: Center(
                child: Text(
                  'Add task',
                  style: TextStyles.taskMakerFont,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future pickDateTime(BuildContext context) async {
    var dateRange = await pickDateRange(context);
    if (dateRange == null) return;

    final startingTime = await pickTime(context);
    if (startingTime == null) return;

    final endingTime = await pickTime(context);
    if (endingTime == null) return;

    setState(
      () => _startingDateTime = DateTime(
        dateRange.start as int,
        startingTime.hour,
        startingTime.minute,
      ),
    );

    setState(
      () => _endingDateTime = DateTime(
        dateRange.end,
        endingTime.hour,
        endingTime.minute,
      ),
    );
  }

  Future pickDateRange(BuildContext context) async {
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (newDateRange == null) return;

    return newDateRange;
  }

  Future pickTime(BuildContext context) async {
    final newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime == null) return;

    return newTime;
  }

  String getTime(DateTime dateTime) =>
      DateFormat('MMM d  HH:mm').format(dateTime);
}
