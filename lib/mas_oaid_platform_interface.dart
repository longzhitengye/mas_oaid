import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mas_oaid_method_channel.dart';

abstract class MasOaidPlatform extends PlatformInterface {
  /// Constructs a MasOaidPlatform.
  MasOaidPlatform() : super(token: _token);

  static final Object _token = Object();

  static MasOaidPlatform _instance = MethodChannelMasOaid();

  /// The default instance of [MasOaidPlatform] to use.
  ///
  /// Defaults to [MethodChannelMasOaid].
  static MasOaidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MasOaidPlatform] when
  /// they register themselves.
  static set instance(MasOaidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getOAID() {
    throw UnimplementedError('OAID() has not been implemented.');
  }
}
