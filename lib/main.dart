import 'package:flutter/material.dart';
import 'package:i3t2/config/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "assets/env/.env");
  runApp(const App());
}
