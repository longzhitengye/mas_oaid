import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mas_oaid/mas_oaid_method_channel.dart';

void main() {
  MethodChannelMasOaid platform = MethodChannelMasOaid();
  const MethodChannel channel = MethodChannel('mas_oaid');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getOAID(), '42');
  });
}
