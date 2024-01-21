import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_blue_ray/features/task/presentation/provider/provider_category.dart';
import 'package:task_blue_ray/features/task/presentation/screens/screen_main.dart';
import 'config/injection_contanier.dart' as di;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => di.sl<ProviderCategory>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenTask(),
      ),
    );
  }
}
