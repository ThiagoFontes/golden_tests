import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/src/widget_tester.dart';
import 'package:golden_tests/main.dart';

void main() {
  testWidgets('Testing with 360x640', (WidgetTester tester) async {
    await tester.setScreenSize(width: 360, height: 640); //Samsung Galaxy S7
    await tester.pumpWidget(MyApp());
    await expectLater(
        find.byType(MyApp), matchesGoldenFile('main_360_640.png'));
  });

  testWidgets('Testing with 360x640', (WidgetTester tester) async {
    await tester.setScreenSize(width: 412, height: 824); //Google Pixel 3
    await tester.pumpWidget(MyApp());
    await expectLater(
        find.byType(MyApp), matchesGoldenFile('main_412_824.png'));
  });
}

extension SetScreenSize on WidgetTester {
  Future<void> setScreenSize(
      {double width = 540,
      double height = 960,
      double pixelDensity = 1}) async {
    final size = Size(width, height);
    await this.binding.setSurfaceSize(size);
    this.binding.window.physicalSizeTestValue = size;
    this.binding.window.devicePixelRatioTestValue = pixelDensity;
  }
}
