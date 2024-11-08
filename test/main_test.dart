import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:event_manager_vudinhhoang_2003/main.dart';
import 'package:event_manager_vudinhhoang_2003/event/event_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  testWidgets('MainApp khởi chạy và hiển thị EventView',
      (WidgetTester tester) async {
    // Xây dựng ứng dụng
    await tester.pumpWidget(const MainApp());

    // Lấy AppLocalizations
    final al = await AppLocalizations.delegate.load(const Locale('vi'));

    // Kiểm tra xem tiêu đề ứng dụng được hiển thị
    expect(find.text(al.appTitle), findsOneWidget);

    // Kiểm tra xem EventView được hiển thị
    expect(find.byType(EventView), findsOneWidget);
  });
}
