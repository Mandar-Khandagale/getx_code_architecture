import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  final Widget Function(BuildContext context) builder;

  const BaseWidget({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  BaseWidgetState createState() => BaseWidgetState();
}

/// State of StatefulWidget
class BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
