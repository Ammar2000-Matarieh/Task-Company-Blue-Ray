import 'package:flutter/material.dart';
import 'package:task_blue_ray/app.dart';
import 'package:task_blue_ray/config/injection_contanier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());

}
