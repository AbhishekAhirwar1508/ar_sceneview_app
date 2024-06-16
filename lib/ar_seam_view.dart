import 'package:ar_demo_app_two/scene_view_flutter%20/scene_view.dart';
import 'package:ar_demo_app_two/scene_view_flutter%20/sceneview_node.dart';
import 'package:flutter/material.dart';

class ArSeamView extends StatelessWidget {
  const ArSeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR SeamView'),
      ),
      body: SceneView(
        onViewCreated: (controller) {
          print(' >>>>>>>>>>>>>>>>>>>>>>... .............  flutter: onViewCreated');
          controller.addNode(SceneViewNode(
            fileLocation: 'assets/sample_curtain.glb',
            position: KotlinFloat3(z: -1.0),
            rotation: KotlinFloat3(x: 15),
          ));
        },
      ),
    );
  }
}
