import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sapasi/main.dart';

void main() {
  testWidgets('앱 진입 시 홈 화면을 표시한다', (tester) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();

    expect(find.text('홈 화면'), findsOneWidget);
  });

  testWidgets('하단 탭을 선택하면 해당 화면으로 이동한다', (tester) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();

    const destinations = {
      '내역': '내역 화면',
      '예산': '예산 화면',
      '통계': '통계 화면',
      '설정': '설정 화면',
      '홈': '홈 화면',
    };

    for (final destination in destinations.entries) {
      await tester.tap(find.text(destination.key));
      await tester.pumpAndSettle();

      expect(find.text(destination.value), findsOneWidget);
    }
  });

  testWidgets('화면과 하단 내비게이션 배경에 흰색을 사용한다', (tester) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();

    final context = tester.element(find.byType(Scaffold));
    final theme = Theme.of(context);

    expect(theme.scaffoldBackgroundColor, Colors.white);
    expect(theme.navigationBarTheme.backgroundColor, Colors.white);
  });
}
