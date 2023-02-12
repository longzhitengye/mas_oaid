import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mas_oaid_platform_interface.dart';

/// An implementation of [MasOaidPlatform] that uses method channels.
class MethodChannelMasOaid extends MasOaidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mas_oaid');

  @override
  Future<String?> getOAID() async {
    final version = await methodChannel.invokeMethod<String>('getOAID');
    return version;
  }
}
