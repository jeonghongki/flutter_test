import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/hello_world.dart';

void main() {
  const MethodChannel channel = MethodChannel('hello_world');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HelloWorld.platformVersion, '42');
  });
}
