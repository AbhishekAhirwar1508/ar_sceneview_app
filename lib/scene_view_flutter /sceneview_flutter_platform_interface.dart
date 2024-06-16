import 'package:ar_demo_app_two/scene_view_flutter%20/sceneview_node.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sceneview_flutter_method_channel.dart';

abstract class SceneviewFlutterPlatform extends PlatformInterface {
  /// Constructs a SceneviewFlutterPlatform.
  SceneviewFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static SceneviewFlutterPlatform _instance = MethodChannelSceneViewFlutter();

  /// The default instance of [SceneviewFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSceneViewFlutter].
  static SceneviewFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SceneviewFlutterPlatform] when
  /// they register themselves.
  static set instance(SceneviewFlutterPlatform instance) {
    print('@@@@@@@@@ Here in the ------- instance method SCENEVIEW_FLUTTER_PLATFORM_INTERFACE file');

    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> init(int sceneId) {
    print('@@@@@@@@@ Here in the ------- SCENEVIEW_FLUTTER_PLATFORM_INTERFACE INIT METHOD ');

    throw UnimplementedError('init() has not been implemented.');
  }

  void addNode(SceneViewNode node) {
    print('@@@@@@@@@ Here in the ------- SCENEVIEW_FLUTTER_PLATFORM_INTERFACE ADD NODE METHOD ');

    throw UnimplementedError('addNode() has not been implemented.');
  }

  void dispose(int sceneId){
    print('@@@@@@@@@ Here in the ------- SCENEVIEW_FLUTTER_PLATFORM_INTERFACE DISPOSE METHOD ');

    throw UnimplementedError('dispose() has not been implemented.');
  }
}
