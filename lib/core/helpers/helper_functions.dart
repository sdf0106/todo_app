import 'package:flutter/painting.dart';

import '../../config/theme/palette.dart';
import '../utils/todo_type.dart';

class HelperFunctions {
  static Color typeColor(TodoType type) {
    switch (type) {
      case TodoType.personal:
        return Palette.gold;
      case TodoType.work:
        return Palette.green;
      case TodoType.meeting:
        return Palette.razzmatazz;
      case TodoType.shopping:
        return Palette.carrotOrange;
      case TodoType.study:
        return Palette.royalBlue;
      default:
        return Palette.primary;
    }
  }

  static String typeName(TodoType type) {
    switch (type) {
      case TodoType.personal:
        return 'Personal';
      case TodoType.work:
        return 'Work';
      case TodoType.meeting:
        return 'Meeting';
      case TodoType.shopping:
        return 'Shopping';
      case TodoType.study:
        return 'Study';
      default:
        return 'Default';
    }
  }
}
