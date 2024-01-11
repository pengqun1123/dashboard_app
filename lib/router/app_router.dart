import 'package:dashboard_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../resources/app_colors.dart';

// Page routing navigation
// 页面路由导航管理
final appRouterConfig = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => Container(color: AppColors.pageBackground),
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage<void>(
                key: ValueKey('home_page_key'), child: HomePage())),
    GoRoute(
      path: '/:any',
      builder: (context, state) => Container(color: AppColors.pageBackground),
      redirect: (context, state) {
        // Unsupported path, we redirect it to /, which redirects it to /line
        return '/';
      },
    ),
  ],
);
