import 'package:flutter/cupertino.dart';

class SlideAnimation extends PageRouteBuilder {
  final Widget widget;

  SlideAnimation({required this.widget})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              widget,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

/* Basically we are transferring all the code to this bouncy page route that
is basically  extends PageRouteBuilder that's why we are passing it in super
as to pass all the properties to actual PageRouteBuilder */
