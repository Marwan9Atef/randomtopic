import 'package:flutter/material.dart';
import 'package:randomtopic/core/routes/app_router.dart';
import 'package:randomtopic/core/theme/app_theme.dart';

class RandomTopic extends StatelessWidget {
  const RandomTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: "Random topic",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

    


    );
  }
}