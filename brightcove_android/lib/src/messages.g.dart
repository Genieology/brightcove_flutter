// Autogenerated from Pigeon (v4.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum DataSourceType {
  videoById,
  playlistById,
}

class TextureMessage {
  TextureMessage({
    required this.playerId,
  });

  String playerId;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['playerId'] = playerId;
    return pigeonMap;
  }

  static TextureMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return TextureMessage(
      playerId: pigeonMap['playerId']! as String,
    );
  }
}

class VolumeMessage {
  VolumeMessage({
    required this.playerId,
    required this.volume,
  });

  String playerId;
  double volume;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['playerId'] = playerId;
    pigeonMap['volume'] = volume;
    return pigeonMap;
  }

  static VolumeMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return VolumeMessage(
      playerId: pigeonMap['playerId']! as String,
      volume: pigeonMap['volume']! as double,
    );
  }
}

class PositionMessage {
  PositionMessage({
    required this.playerId,
    required this.position,
  });

  String playerId;
  int position;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['playerId'] = playerId;
    pigeonMap['position'] = position;
    return pigeonMap;
  }

  static PositionMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PositionMessage(
      playerId: pigeonMap['playerId']! as String,
      position: pigeonMap['position']! as int,
    );
  }
}

class PlayMessage {
  PlayMessage({
    required this.account,
    required this.policy,
    required this.dataSource,
    this.catalogBaseUrl,
    required this.dataSourceType,
  });

  String account;
  String policy;
  String dataSource;
  String? catalogBaseUrl;
  DataSourceType dataSourceType;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['account'] = account;
    pigeonMap['policy'] = policy;
    pigeonMap['dataSource'] = dataSource;
    pigeonMap['catalogBaseUrl'] = catalogBaseUrl;
    pigeonMap['dataSourceType'] = dataSourceType.index;
    return pigeonMap;
  }

  static PlayMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PlayMessage(
      account: pigeonMap['account']! as String,
      policy: pigeonMap['policy']! as String,
      dataSource: pigeonMap['dataSource']! as String,
      catalogBaseUrl: pigeonMap['catalogBaseUrl'] as String?,
      dataSourceType: DataSourceType.values[pigeonMap['dataSourceType']! as int]
,
    );
  }
}

class _BrightcoveVideoPlayerApiCodec extends StandardMessageCodec {
  const _BrightcoveVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PlayMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is PositionMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is TextureMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is VolumeMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return PlayMessage.decode(readValue(buffer)!);
      
      case 129:       
        return PositionMessage.decode(readValue(buffer)!);
      
      case 130:       
        return TextureMessage.decode(readValue(buffer)!);
      
      case 131:       
        return VolumeMessage.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class BrightcoveVideoPlayerApi {
  /// Constructor for [BrightcoveVideoPlayerApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  BrightcoveVideoPlayerApi({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _BrightcoveVideoPlayerApiCodec();

  Future<void> initialize() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.initialize', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<TextureMessage> create(PlayMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.create', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as TextureMessage?)!;
    }
  }

  Future<void> dispose(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.dispose', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setVolume(VolumeMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.setVolume', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> playOrPause(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.playOrPause', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> seekTo(PositionMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BrightcoveVideoPlayerApi.seekTo', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}
