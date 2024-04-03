import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class CameraPageWidget extends StatefulWidget {
  @override
  State<CameraPageWidget> createState() => _CameraPageWidgetState();
}

class _CameraPageWidgetState extends State<CameraPageWidget> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  void startCamera() async {
    cameras = await availableCameras();

    cameraController = CameraController(
        cameras[0],
        ResolutionPreset.high,
        enableAudio: true
    );

    await cameraController.initialize().then((value) {
      if(!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparentBackground,
        ),
        body: Stack(
          children: [
            CameraPreview(cameraController),
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}