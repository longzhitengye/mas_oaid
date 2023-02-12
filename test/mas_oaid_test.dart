import 'package:flutter_test/flutter_test.dart';
import 'package:mas_oaid/mas_oaid.dart';
import 'package:mas_oaid/mas_oaid_platform_interface.dart';
import 'package:mas_oaid/mas_oaid_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMasOaidPlatform
    with MockPlatformInterfaceMixin
    implements MasOaidPlatform {

  @override
  Future<String?> getOAID() => Future.value('42');
}

void main() {
  final MasOaidPlatform initialPlatform = MasOaidPlatform.instance;

  test('$MethodChannelMasOaid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMasOaid>());
  });

  test('getPlatformVersion', () async {
    MasOaid masOaidPlugin = MasOaid();
    MockMasOaidPlatform fakePlatform = MockMasOaidPlatform();
    MasOaidPlatform.instance = fakePlatform;

    expect(await masOaidPlugin.getOAID(), '42');
  });
}
