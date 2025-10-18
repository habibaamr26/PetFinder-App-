
import 'package:flutter/material.dart';

import 'core/dependancy_injection/dependancy_injection.dart';
import 'core/route/app_route.dart';
import 'feature/onboarding/presentation/onboarding_screen.dart';

void main() {
  initDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
