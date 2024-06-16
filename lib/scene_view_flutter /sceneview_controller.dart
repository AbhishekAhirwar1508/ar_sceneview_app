import 'package:flutter/services.dart';

import 'sceneview_flutter_platform_interface.dart';
import 'sceneview_node.dart';

class SceneViewController {
  SceneViewController._({
    required this.sceneId,
  }){
    print('@@@@@@@@@ Here in the Scene Controller constructor');

  }

  final int sceneId;

  static Future<SceneViewController> init(
    int sceneId,
  ) async {
    await SceneviewFlutterPlatform.instance.init(sceneId);
    return SceneViewController._(sceneId: sceneId);
  }

  void addNode(SceneViewNode node) {
    SceneviewFlutterPlatform.instance.addNode(node);
  }

  void dispose() {
    SceneviewFlutterPlatform.instance.dispose(sceneId);
  }

}
