
// jan_help_me/lib/main.dart

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(JanHelpMeApp(camera: firstCamera));
}

class JanHelpMeApp extends StatelessWidget {
  final CameraDescription camera;

  JanHelpMeApp({required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jan Help me',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(camera: camera),
    );
  }
}

// باقي الكود موجود كما في مشروعك (اختصرته هنا للتنظيم)
// سيتم وضعه داخل المشروع لاحقًا بنفس الكود الذي تم تحريره في canvas
