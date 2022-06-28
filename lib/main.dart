import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'screens/login_page.dart';
import 'screens/on_boarding_page.dart';

void main() {
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algoriza Task1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
