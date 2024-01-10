import 'package:dashboard_app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AnimationControllerPage extends StatefulWidget {
  const AnimationControllerPage({super.key});

  @override
  State<AnimationControllerPage> createState() =>
      _AnimationControllerPageState();
}

class _AnimationControllerPageState extends State<AnimationControllerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(_controller);

    // _controller.addListener(() {
    //   setState(() {
    //     _size = 100 + _controller.value * 100;
    //   });
    // });
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _controller.forward();
      }
      // else if(status == AnimationStatus.reverse) {
      //   _controller.forward();
      // }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward();
      },
      child: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Column(
            children: [
              FlutterLogo(
                textColor: AppColors.pageBackground,
                size: 60,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Chart List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
