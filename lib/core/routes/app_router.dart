import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:randomtopic/core/routes/route_center.dart';
import 'package:randomtopic/feature/products/presentation/screens/products_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouteCenter.products,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const ProductsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
  );
}