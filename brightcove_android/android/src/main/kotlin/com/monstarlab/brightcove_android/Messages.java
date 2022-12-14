// Autogenerated from Pigeon (v4.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.monstarlab.brightcove_android;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class Messages {

  public enum DataSourceType {
    VIDEO_BY_ID(0),
    PLAYLIST_BY_ID(1);

    private int index;
    private DataSourceType(final int index) {
      this.index = index;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class TextureMessage {
    private @NonNull String playerId;
    public @NonNull String getPlayerId() { return playerId; }
    public void setPlayerId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"playerId\" is null.");
      }
      this.playerId = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private TextureMessage() {}
    public static final class Builder {
      private @Nullable String playerId;
      public @NonNull Builder setPlayerId(@NonNull String setterArg) {
        this.playerId = setterArg;
        return this;
      }
      public @NonNull TextureMessage build() {
        TextureMessage pigeonReturn = new TextureMessage();
        pigeonReturn.setPlayerId(playerId);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("playerId", playerId);
      return toMapResult;
    }
    static @NonNull TextureMessage fromMap(@NonNull Map<String, Object> map) {
      TextureMessage pigeonResult = new TextureMessage();
      Object playerId = map.get("playerId");
      pigeonResult.setPlayerId((String)playerId);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class VolumeMessage {
    private @NonNull String playerId;
    public @NonNull String getPlayerId() { return playerId; }
    public void setPlayerId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"playerId\" is null.");
      }
      this.playerId = setterArg;
    }

    private @NonNull Double volume;
    public @NonNull Double getVolume() { return volume; }
    public void setVolume(@NonNull Double setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"volume\" is null.");
      }
      this.volume = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private VolumeMessage() {}
    public static final class Builder {
      private @Nullable String playerId;
      public @NonNull Builder setPlayerId(@NonNull String setterArg) {
        this.playerId = setterArg;
        return this;
      }
      private @Nullable Double volume;
      public @NonNull Builder setVolume(@NonNull Double setterArg) {
        this.volume = setterArg;
        return this;
      }
      public @NonNull VolumeMessage build() {
        VolumeMessage pigeonReturn = new VolumeMessage();
        pigeonReturn.setPlayerId(playerId);
        pigeonReturn.setVolume(volume);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("playerId", playerId);
      toMapResult.put("volume", volume);
      return toMapResult;
    }
    static @NonNull VolumeMessage fromMap(@NonNull Map<String, Object> map) {
      VolumeMessage pigeonResult = new VolumeMessage();
      Object playerId = map.get("playerId");
      pigeonResult.setPlayerId((String)playerId);
      Object volume = map.get("volume");
      pigeonResult.setVolume((Double)volume);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class PositionMessage {
    private @NonNull String playerId;
    public @NonNull String getPlayerId() { return playerId; }
    public void setPlayerId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"playerId\" is null.");
      }
      this.playerId = setterArg;
    }

    private @NonNull Long position;
    public @NonNull Long getPosition() { return position; }
    public void setPosition(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"position\" is null.");
      }
      this.position = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private PositionMessage() {}
    public static final class Builder {
      private @Nullable String playerId;
      public @NonNull Builder setPlayerId(@NonNull String setterArg) {
        this.playerId = setterArg;
        return this;
      }
      private @Nullable Long position;
      public @NonNull Builder setPosition(@NonNull Long setterArg) {
        this.position = setterArg;
        return this;
      }
      public @NonNull PositionMessage build() {
        PositionMessage pigeonReturn = new PositionMessage();
        pigeonReturn.setPlayerId(playerId);
        pigeonReturn.setPosition(position);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("playerId", playerId);
      toMapResult.put("position", position);
      return toMapResult;
    }
    static @NonNull PositionMessage fromMap(@NonNull Map<String, Object> map) {
      PositionMessage pigeonResult = new PositionMessage();
      Object playerId = map.get("playerId");
      pigeonResult.setPlayerId((String)playerId);
      Object position = map.get("position");
      pigeonResult.setPosition((position == null) ? null : ((position instanceof Integer) ? (Integer)position : (Long)position));
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class PlayMessage {
    private @NonNull String account;
    public @NonNull String getAccount() { return account; }
    public void setAccount(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"account\" is null.");
      }
      this.account = setterArg;
    }

    private @NonNull String policy;
    public @NonNull String getPolicy() { return policy; }
    public void setPolicy(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"policy\" is null.");
      }
      this.policy = setterArg;
    }

    private @NonNull String dataSource;
    public @NonNull String getDataSource() { return dataSource; }
    public void setDataSource(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"dataSource\" is null.");
      }
      this.dataSource = setterArg;
    }

    private @Nullable String catalogBaseUrl;
    public @Nullable String getCatalogBaseUrl() { return catalogBaseUrl; }
    public void setCatalogBaseUrl(@Nullable String setterArg) {
      this.catalogBaseUrl = setterArg;
    }

    private @NonNull DataSourceType dataSourceType;
    public @NonNull DataSourceType getDataSourceType() { return dataSourceType; }
    public void setDataSourceType(@NonNull DataSourceType setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"dataSourceType\" is null.");
      }
      this.dataSourceType = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private PlayMessage() {}
    public static final class Builder {
      private @Nullable String account;
      public @NonNull Builder setAccount(@NonNull String setterArg) {
        this.account = setterArg;
        return this;
      }
      private @Nullable String policy;
      public @NonNull Builder setPolicy(@NonNull String setterArg) {
        this.policy = setterArg;
        return this;
      }
      private @Nullable String dataSource;
      public @NonNull Builder setDataSource(@NonNull String setterArg) {
        this.dataSource = setterArg;
        return this;
      }
      private @Nullable String catalogBaseUrl;
      public @NonNull Builder setCatalogBaseUrl(@Nullable String setterArg) {
        this.catalogBaseUrl = setterArg;
        return this;
      }
      private @Nullable DataSourceType dataSourceType;
      public @NonNull Builder setDataSourceType(@NonNull DataSourceType setterArg) {
        this.dataSourceType = setterArg;
        return this;
      }
      public @NonNull PlayMessage build() {
        PlayMessage pigeonReturn = new PlayMessage();
        pigeonReturn.setAccount(account);
        pigeonReturn.setPolicy(policy);
        pigeonReturn.setDataSource(dataSource);
        pigeonReturn.setCatalogBaseUrl(catalogBaseUrl);
        pigeonReturn.setDataSourceType(dataSourceType);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("account", account);
      toMapResult.put("policy", policy);
      toMapResult.put("dataSource", dataSource);
      toMapResult.put("catalogBaseUrl", catalogBaseUrl);
      toMapResult.put("dataSourceType", dataSourceType == null ? null : dataSourceType.index);
      return toMapResult;
    }
    static @NonNull PlayMessage fromMap(@NonNull Map<String, Object> map) {
      PlayMessage pigeonResult = new PlayMessage();
      Object account = map.get("account");
      pigeonResult.setAccount((String)account);
      Object policy = map.get("policy");
      pigeonResult.setPolicy((String)policy);
      Object dataSource = map.get("dataSource");
      pigeonResult.setDataSource((String)dataSource);
      Object catalogBaseUrl = map.get("catalogBaseUrl");
      pigeonResult.setCatalogBaseUrl((String)catalogBaseUrl);
      Object dataSourceType = map.get("dataSourceType");
      pigeonResult.setDataSourceType(dataSourceType == null ? null : DataSourceType.values()[(int)dataSourceType]);
      return pigeonResult;
    }
  }
  private static class BrightcoveVideoPlayerApiCodec extends StandardMessageCodec {
    public static final BrightcoveVideoPlayerApiCodec INSTANCE = new BrightcoveVideoPlayerApiCodec();
    private BrightcoveVideoPlayerApiCodec() {}
    @Override
    protected Object readValueOfType(byte type, ByteBuffer buffer) {
      switch (type) {
        case (byte)128:         
          return PlayMessage.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)129:         
          return PositionMessage.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)130:         
          return TextureMessage.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)131:         
          return VolumeMessage.fromMap((Map<String, Object>) readValue(buffer));
        
        default:        
          return super.readValueOfType(type, buffer);
        
      }
    }
    @Override
    protected void writeValue(ByteArrayOutputStream stream, Object value)     {
      if (value instanceof PlayMessage) {
        stream.write(128);
        writeValue(stream, ((PlayMessage) value).toMap());
      } else 
      if (value instanceof PositionMessage) {
        stream.write(129);
        writeValue(stream, ((PositionMessage) value).toMap());
      } else 
      if (value instanceof TextureMessage) {
        stream.write(130);
        writeValue(stream, ((TextureMessage) value).toMap());
      } else 
      if (value instanceof VolumeMessage) {
        stream.write(131);
        writeValue(stream, ((VolumeMessage) value).toMap());
      } else 
{
        super.writeValue(stream, value);
      }
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter.*/
  public interface BrightcoveVideoPlayerApi {
    void initialize();
    @NonNull TextureMessage create(@NonNull PlayMessage msg);
    void dispose(@NonNull TextureMessage msg);
    void setVolume(@NonNull VolumeMessage msg);
    void enterPictureInPictureMode(@NonNull TextureMessage msg);
    void play(@NonNull TextureMessage msg);
    void pause(@NonNull TextureMessage msg);
    void seekTo(@NonNull PositionMessage msg);

    /** The codec used by BrightcoveVideoPlayerApi. */
    static MessageCodec<Object> getCodec() {
      return BrightcoveVideoPlayerApiCodec.INSTANCE;
    }

    /** Sets up an instance of `BrightcoveVideoPlayerApi` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, BrightcoveVideoPlayerApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.initialize", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              api.initialize();
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.create", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              PlayMessage msgArg = (PlayMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              TextureMessage output = api.create(msgArg);
              wrapped.put("result", output);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.dispose", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              TextureMessage msgArg = (TextureMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.dispose(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.setVolume", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              VolumeMessage msgArg = (VolumeMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.setVolume(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.enterPictureInPictureMode", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              TextureMessage msgArg = (TextureMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.enterPictureInPictureMode(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.play", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              TextureMessage msgArg = (TextureMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.play(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.pause", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              TextureMessage msgArg = (TextureMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.pause(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.BrightcoveVideoPlayerApi.seekTo", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              PositionMessage msgArg = (PositionMessage)args.get(0);
              if (msgArg == null) {
                throw new NullPointerException("msgArg unexpectedly null.");
              }
              api.seekTo(msgArg);
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  private static Map<String, Object> wrapError(Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}
