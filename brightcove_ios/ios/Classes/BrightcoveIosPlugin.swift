// Autogenerated from Pigeon (v4.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif


/// Generated class from Pigeon.

enum DataSourceType: Int {
  case videoById = 0
  case playlistById = 1
}

///Generated class from Pigeon that represents data sent in messages.
struct TextureMessage {
  var playerId: String

  static func fromMap(_ map: [String: Any?]) -> TextureMessage? {
    let playerId = map["playerId"] as! String

    return TextureMessage(
      playerId: playerId
    )
  }
  func toMap() -> [String: Any?] {
    return [
      "playerId": playerId
    ]
  }
}

///Generated class from Pigeon that represents data sent in messages.
struct VolumeMessage {
  var playerId: String
  var volume: Double

  static func fromMap(_ map: [String: Any?]) -> VolumeMessage? {
    let playerId = map["playerId"] as! String
    let volume = map["volume"] as! Double

    return VolumeMessage(
      playerId: playerId,
      volume: volume
    )
  }
  func toMap() -> [String: Any?] {
    return [
      "playerId": playerId,
      "volume": volume
    ]
  }
}

///Generated class from Pigeon that represents data sent in messages.
struct PositionMessage {
  var playerId: String
  var position: Int32

  static func fromMap(_ map: [String: Any?]) -> PositionMessage? {
    let playerId = map["playerId"] as! String
    let position = map["position"] as! Int32

    return PositionMessage(
      playerId: playerId,
      position: position
    )
  }
  func toMap() -> [String: Any?] {
    return [
      "playerId": playerId,
      "position": position
    ]
  }
}

///Generated class from Pigeon that represents data sent in messages.
struct PlayMessage {
  var account: String
  var policy: String
  var dataSource: String
  var catalogBaseUrl: String? = nil
  var dataSourceType: DataSourceType

  static func fromMap(_ map: [String: Any?]) -> PlayMessage? {
    let account = map["account"] as! String
    let policy = map["policy"] as! String
    let dataSource = map["dataSource"] as! String
    let catalogBaseUrl = map["catalogBaseUrl"] as? String 
    let dataSourceType = DataSourceType(rawValue: map["dataSourceType"] as! Int)!

    return PlayMessage(
      account: account,
      policy: policy,
      dataSource: dataSource,
      catalogBaseUrl: catalogBaseUrl,
      dataSourceType: dataSourceType
    )
  }
  func toMap() -> [String: Any?] {
    return [
      "account": account,
      "policy": policy,
      "dataSource": dataSource,
      "catalogBaseUrl": catalogBaseUrl,
      "dataSourceType": dataSourceType.rawValue
    ]
  }
}
private class BrightcoveVideoPlayerApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return PlayMessage.fromMap(self.readValue() as! [String: Any])      
      case 129:
        return PositionMessage.fromMap(self.readValue() as! [String: Any])      
      case 130:
        return TextureMessage.fromMap(self.readValue() as! [String: Any])      
      case 131:
        return VolumeMessage.fromMap(self.readValue() as! [String: Any])      
      default:
        return super.readValue(ofType: type)
      
    }
  }
}
private class BrightcoveVideoPlayerApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? PlayMessage {
      super.writeByte(128)
      super.writeValue(value.toMap())
    } else if let value = value as? PositionMessage {
      super.writeByte(129)
      super.writeValue(value.toMap())
    } else if let value = value as? TextureMessage {
      super.writeByte(130)
      super.writeValue(value.toMap())
    } else if let value = value as? VolumeMessage {
      super.writeByte(131)
      super.writeValue(value.toMap())
    } else {
      super.writeValue(value)
    }
  }
}

private class BrightcoveVideoPlayerApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return BrightcoveVideoPlayerApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return BrightcoveVideoPlayerApiCodecWriter(data: data)
  }
}

class BrightcoveVideoPlayerApiCodec: FlutterStandardMessageCodec {
  static let shared = BrightcoveVideoPlayerApiCodec(readerWriter: BrightcoveVideoPlayerApiCodecReaderWriter())
}

///Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol BrightcoveVideoPlayerApi {
  func initialize()
  func create(msg: PlayMessage) -> TextureMessage
  func dispose(msg: TextureMessage)
  func setVolume(msg: VolumeMessage)
  func enterPictureInPictureMode(msg: TextureMessage)
  func play(msg: TextureMessage)
  func pause(msg: TextureMessage)
  func seekTo(msg: PositionMessage)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class BrightcoveVideoPlayerApiSetup {
  /// The codec used by BrightcoveVideoPlayerApi.
  static var codec: FlutterStandardMessageCodec { BrightcoveVideoPlayerApiCodec.shared }
  /// Sets up an instance of `BrightcoveVideoPlayerApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: BrightcoveVideoPlayerApi?) {
    let initializeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.initialize", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      initializeChannel.setMessageHandler { _, reply in
        api.initialize()
        reply(nil)
      }
    } else {
      initializeChannel.setMessageHandler(nil)
    }
    let createChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.create", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      createChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! PlayMessage
        let result = api.create(msg: msgArg)
        reply(wrapResult(result))
      }
    } else {
      createChannel.setMessageHandler(nil)
    }
    let disposeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.dispose", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      disposeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! TextureMessage
        api.dispose(msg: msgArg)
        reply(nil)
      }
    } else {
      disposeChannel.setMessageHandler(nil)
    }
    let setVolumeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.setVolume", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setVolumeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! VolumeMessage
        api.setVolume(msg: msgArg)
        reply(nil)
      }
    } else {
      setVolumeChannel.setMessageHandler(nil)
    }
    let enterPictureInPictureModeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.enterPictureInPictureMode", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      enterPictureInPictureModeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! TextureMessage
        api.enterPictureInPictureMode(msg: msgArg)
        reply(nil)
      }
    } else {
      enterPictureInPictureModeChannel.setMessageHandler(nil)
    }
    let playChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.play", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      playChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! TextureMessage
        api.play(msg: msgArg)
        reply(nil)
      }
    } else {
      playChannel.setMessageHandler(nil)
    }
    let pauseChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.pause", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      pauseChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! TextureMessage
        api.pause(msg: msgArg)
        reply(nil)
      }
    } else {
      pauseChannel.setMessageHandler(nil)
    }
    let seekToChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.BrightcoveVideoPlayerApi.seekTo", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      seekToChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let msgArg = args[0] as! PositionMessage
        api.seekTo(msg: msgArg)
        reply(nil)
      }
    } else {
      seekToChannel.setMessageHandler(nil)
    }
  }
}

private func wrapResult(_ result: Any?) -> [String: Any?] {
  return ["result": result]
}

private func wrapError(_ error: FlutterError) -> [String: Any?] {
  return [
    "error": [
      "code": error.code,
      "message": error.message,
      "details": error.details
    ]
  ]
}