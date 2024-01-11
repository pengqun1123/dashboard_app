import 'package:dashboard_app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class MenuHeader extends StatefulWidget {
  const MenuHeader({super.key});

  @override
  State<MenuHeader> createState() =>
      _MenuHeaderState();
}

class _MenuHeaderState extends State<MenuHeader>
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


    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _controller.forward();
      }
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
