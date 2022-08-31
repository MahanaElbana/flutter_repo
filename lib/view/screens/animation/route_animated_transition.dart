import 'package:flutter/cupertino.dart';

// package customization of MaterialPageRoute
// created by mahney Elbana
// Flutter package
/// Example
/// ///////////////////////////////////////
///  TextButton(onPressed:() {
///      Navigator.of(context).push(MahneyPageRoute(
///          page: const CustomAnimatedCrossFade(),
///         transitionType: TransitionType.slideTransitionFromLeft
///         ),
///       );
///    }, child: Text("transition"))
////////////////////////////////

enum TransitionType {
  slideTransitionFromRight,
  slideTransitionFromLeft,
  slideTransitionFromTop,
  slideTransitionFromDown,

  scaleTransition,
  rotationTransition,
  sizeTransition,
  fadeTransition,
}

class MahneyPageRoute extends PageRouteBuilder {
  final Widget page;
  final TransitionType? transitionType;
  MahneyPageRoute({required this.page, this.transitionType})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> animationtwo) =>
                page,
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> animationtwo, Widget child) {
              // --- -- ----  cases to achieve certain transition -- --- --- --- //
              switch (transitionType) {
                case TransitionType.slideTransitionFromRight:
                  return CustomSlideTransitionFromRight(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.slideTransitionFromLeft:
                  return CustomSlideTransitionFromLeft(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.slideTransitionFromTop:
                  return CustomSlideTransitionFromTop(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.slideTransitionFromDown:
                  return CustomSlideTransitionFromDown(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);

                case TransitionType.fadeTransition:
                  return CustomFadeTransition(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.scaleTransition:
                  return CustomScaleTransition(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.sizeTransition:
                  return CustomAlignTransition(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                case TransitionType.rotationTransition:
                  return CustomSlideTransitionFromRight(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);

                /*case TransitionType.positionedTransition:
                  return CustomPositionedTransition(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
                     */
                default:
                  return CustomScaleTransition(
                      animation: animation,
                      animationtwo: animationtwo,
                      child: child);
              }
              // --- -- ----  cases to achieve certain transition -- --- --- --- //
            });
}

//--- --- ---- ---- custom animations  --- --- --- --//
class CustomSlideTransitionGeneral extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;
  final Offset startOffset;
  const CustomSlideTransitionGeneral(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child,
      required this.startOffset})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  SlideTransition transitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> animationtwo,
      Widget child) {
    Offset begin = startOffset;
    Offset end = const Offset(0.0, 0.0);
    Tween<Offset> tween = Tween(begin: begin, end: end);
    Animation<Offset> offestAnimation = animation.drive(tween);
    return SlideTransition(
      position: offestAnimation,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}

class CustomSlideTransitionFromRight extends CustomSlideTransitionGeneral {
  const CustomSlideTransitionFromRight(
      {Key? key,
      required super.animation,
      required super.animationtwo,
      required super.child})
      : super(key: key, startOffset: const Offset(1.0, 0));
}

class CustomSlideTransitionFromLeft extends CustomSlideTransitionGeneral {
  const CustomSlideTransitionFromLeft(
      {Key? key,
      required super.animation,
      required super.animationtwo,
      required super.child})
      : super(key: key, startOffset: const Offset(-1.0, 0));
}

class CustomSlideTransitionFromTop extends CustomSlideTransitionGeneral {
  const CustomSlideTransitionFromTop(
      {Key? key,
      required super.animation,
      required super.animationtwo,
      required super.child})
      : super(key: key, startOffset: const Offset(0, -1));
}

class CustomSlideTransitionFromDown extends CustomSlideTransitionGeneral {
  const CustomSlideTransitionFromDown(
      {Key? key,
      required super.animation,
      required super.animationtwo,
      required super.child})
      : super(key: key, startOffset: const Offset(0, 1));
}

/////////////////////////////////////////////////////////////////////

/*
class CustomTransitionBuilder1 extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;

  const CustomTransitionBuilder1(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  SlideTransition transitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> animationtwo,
      Widget child) {
    Offset begin = const Offset(1, 0.0);

    Offset end = const Offset(0.0, 0.0);

    Tween<Offset> tween = Tween(begin: begin, end: end);

    var curveAnimation =
        CurvedAnimation(parent: animation, curve: Curves.easeInOutBack);
    return SlideTransition(
      position: tween.animate(curveAnimation),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}
*/
//-- --- --- --- --- --- --- --- --- -- - -- -  - -//

class CustomScaleTransition extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;

  const CustomScaleTransition(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  ScaleTransition transitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> animationtwo,
      Widget child) {
    const double begin = 0.0;

    const double end = 1.0;

    Tween<double> tween = Tween(begin: begin, end: end);

    var curveAnimation =
        CurvedAnimation(parent: animation, curve: Curves.easeInOutBack);
    return ScaleTransition(
      scale: tween.animate(curveAnimation),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}

class CustomRotationTransition extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;

  const CustomRotationTransition(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  RotationTransition transitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> animationtwo,
      Widget child) {
    const double begin = 0.0;

    const double end = 1.0;

    Tween<double> tween = Tween(begin: begin, end: end);

    Animation<double> animationDouble = animation.drive(tween);
    return RotationTransition(
      turns: animationDouble,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}

class CustomAlignTransition extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;

  const CustomAlignTransition(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  Align transitionBuilder(BuildContext context, Animation<double> animation,
      Animation<double> animationtwo, Widget child) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizeTransition(
        sizeFactor: animation,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}

class CustomFadeTransition extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> animationtwo;
  final Widget child;

  const CustomFadeTransition(
      {Key? key,
      required this.animation,
      required this.animationtwo,
      required this.child})
      : super(key: key);

//--- -----  transitionBuilder animation for routes ----------//
  FadeTransition transitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> animationtwo,
      Widget child) {
    var tween = Tween(begin: 0.0, end: 1.0);
    var curveAnimation =
        CurvedAnimation(parent: animation, curve: Curves.linear);
    return FadeTransition(
      opacity: tween.animate(curveAnimation),
      child: SizeTransition(
        sizeFactor: animation,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return transitionBuilder(context, animation, animationtwo, child);
  }
}
