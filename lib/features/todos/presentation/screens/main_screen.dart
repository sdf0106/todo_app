import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../config/theme/palette.dart';
import '../../../../config/theme/text_styles.dart';
import '../../domain/entities/todo.dart';
import '../bloc/todos/todos_bloc.dart';
import 'home_screen.dart';
import 'task_screen.dart';

import 'dart:math' as math;
import '../widgets/reminder_box.dart';
import '../widgets/rounded_button.dart';
import '../widgets/show_modal_content.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  int numbOfTasks = 1;
  List pages = const [
    HomeScreen(),
    TaskScreen(),
  ];

  bool activeReminder = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.13;
    height = activeReminder == true
        ? height = MediaQuery.of(context).size.height * 0.29
        : height = MediaQuery.of(context).size.height * 0.13;

    double avatarPos = MediaQuery.of(context).size.width * 0.07;

    return SafeArea(
      child: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          return BlocListener<TodosBloc, TodosState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                loaded: (List<Todo> tasks, String message) {
                  numbOfTasks = tasks.length;
                  setState(() {});
                },
                taskAdded: (String message) {},
                taskStatusChanged: (String message) {
                  if (message == 'Reminder Status Changed') {
                    activeReminder = true;
                  }
                  setState(() {});
                },
                failure: (String message) {},
                emptyList: () {},
                closeReminderBox: () {
                  activeReminder = false;
                  setState(() {});
                },
              );
            },
            child: Scaffold(
              appBar: appBar(
                context,
                height,
                avatarPos,
                activeReminder,
                numbOfTasks,
              ),
              body: pages[index],
              floatingActionButton: floatingActionButton(
                context,
                icon: Icons.add_rounded,
                onPressed: () => showModal(context),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomAppBar(
                child: Container(
                  color: Colors.white,
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        child: MaterialButton(
                          onPressed: () => setState(() {
                            index = 0;
                          }),
                          minWidth: 40.0,
                          child: SvgPicture.asset(
                            'assets/images/home_i.svg',
                            color:
                                index == 0 ? Palette.conrflower : Palette.alto,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        child: MaterialButton(
                          onPressed: () => setState(() {
                            index = 1;
                          }),
                          minWidth: 40.0,
                          child: SvgPicture.asset(
                            'assets/images/task_i.svg',
                            color:
                                index == 1 ? Palette.conrflower : Palette.alto,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  PreferredSize appBar(
    BuildContext context,
    double height,
    double avatarPos,
    bool activeReminder,
    int numberOfTasks,
  ) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: AppBar(
        elevation: 0.0,
        flexibleSpace: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Palette.malibu,
                Palette.mariner,
              ],
              transform: GradientRotation(math.pi * 7 / 6),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * (-0.13),
                left: MediaQuery.of(context).size.width * 0.56 * (-0.38),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.17),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * (-0.022),
                left: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.115,
                  width: MediaQuery.of(context).size.width * 0.248,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.17),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: avatarPos,
                  right: 18.0,
                  left: 18.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Brenda!\nYou have $numberOfTasks tasks',
                      style: TextStyles.numberOfTasksFont,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 5.0,
                            blurRadius: 79.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (activeReminder == true)
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: ReminderBox(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget floatingActionButton(
    BuildContext context, {
    required VoidCallback onPressed,
    required IconData icon,
  }) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: RoundedButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }

  Future<void> showModal(BuildContext context) {
    return showModalBottomSheet<void>(
      barrierColor: Palette.mineShaft.withOpacity(0.24),
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.elliptical(
            160.0,
            25.0,
          ),
        ),
      ),
      builder: (BuildContext context) {
        return const ShowModalContent();
      },
    );
  }
}
