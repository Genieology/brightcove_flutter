import 'package:brightcove_ios/src/messages.g.dart';
import 'package:brightcove_flutter_platform_interface/brightcove_flutter_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrightcoveIosPlatform extends BrightcoveFlutterPlatform {
  final BrightcoveVideoPlayerApi _api = BrightcoveVideoPlayerApi();

  static void registerWith() {
    BrightcoveFlutterPlatform.instance = BrightcoveIosPlatform();
  }

  DataSourceType _convertTypes(VideoSourceType type) {
    switch (type) {
      case VideoSourceType.videoById:
        return DataSourceType.videoById;
      case VideoSourceType.playlistById:
        return DataSourceType.playlistById;
    }
  }

  @override
  Future create(DataSource dataSource, BrightcoveOptions options) async {
    final msg = PlayMessage(
      dataSource: dataSource.dataSource,
      dataSourceType: _convertTypes(dataSource.sourceType),
      account: options.account,
      policy: options.policy,
    );
    final playerId = (await _api.create(msg)).playerId;
    return playerId;
  }

  @override
  Widget buildView(String playerId) {
    return UiKitView(
      viewType: 'brightcove_videoplayer#$playerId',
    );
  }

  @override
  Stream<VideoEvent> videoEventsFor(String playerId) {
    return EventChannel("brightcove_videoplayer/videoEvents$playerId")
        .receiveBroadcastStream()
        .map((event) {
      final Map<dynamic, dynamic> map = event as Map<dynamic, dynamic>;
      switch (map['event']) {
        case 'bufferingStart':
          return VideoEvent(eventType: VideoEventType.bufferingStart);
        case 'bufferedUpdate':
          // TODO load missing properties
          return VideoEvent(eventType: VideoEventType.bufferingUpdate);
        case 'bufferingCompleted':
          return VideoEvent(eventType: VideoEventType.bufferingEnd);
        case 'initialized':
          // Duration duration = Duration(milliseconds: 0);
          // if (map['duration'] is double) {
          //   duration =
          //       Duration(milliseconds: (map['duration'] as double).round());
          // } else if (map['duration' is Duration]) {
          //   duration = map['duration'] as Duration;
          // }
          return VideoEvent(
            eventType: VideoEventType.initialized,
            duration: // map['duration'] as Duration,
                Duration(milliseconds: (map['duration'] as int? ?? 0)),
            size: Size(
              (map['videoWidth'] as int?)?.toDouble() ?? 0,
              (map['videoHeight'] as int?)?.toDouble() ?? 0,
            ),
          );
        case 'captionsAvailable':
          return VideoEvent(
            eventType: VideoEventType.captionsAvailable,
            captionLanguages: event['languages'] as List<String>,
          );
        case 'playProgress':
          return VideoEvent(
            eventType: VideoEventType.playProgress,
            currentPosition: //map['position'] ??
                (map['position'] == null ||
                        map['position'] == double.negativeInfinity ||
                        map['position'] == double.infinity)
                    ? (0 as int)
                    : ((map['position'] as double) * 1000).toInt(),
          );
        case 'completed':
          return VideoEvent(eventType: VideoEventType.completed);
        default:
          return VideoEvent(eventType: VideoEventType.unknown);
      }
    });
  }

  @override
  Future<void> init() async {
    return _api.initialize();
  }

  @override
  Future<void> dispose(String playerId) {
    return _api.dispose(TextureMessage(playerId: playerId));
  }

  @override
  Future<void> play(String playerId) {
    return _api.play(TextureMessage(playerId: playerId));
  }

  @override
  Future<void> seekTo(String playerId, Duration position) {
    return _api.seekTo(
        PositionMessage(playerId: playerId, position: position.inMilliseconds));
  }

  @override
  Future<void> pause(String playerId) {
    return _api.pause(TextureMessage(playerId: playerId));
  }

  @override
  Future<void> setVolume(String playerId, double volume) {
    return _api.setVolume(VolumeMessage(playerId: playerId, volume: volume));
  }

  @override
  Future enterPiPMode(String playerId) {
    return _api.enterPictureInPictureMode(TextureMessage(playerId: playerId));
  }
}
