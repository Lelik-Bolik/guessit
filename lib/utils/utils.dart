import 'package:flutter/widgets.dart';

class Utils {
  static int widgetToInt(Widget widget) {
    return int.parse((widget as Text).data);
  }
}
