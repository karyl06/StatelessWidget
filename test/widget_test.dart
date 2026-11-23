
import 'package:flutter_test/flutter_test.dart';
import 'package:statelesswidget_studynote/main.dart';

void main() {
  testWidgets('StudyNotes app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const StudyNotesApp());

    expect(find.byType(StudyNotesApp), findsOneWidget);
  });
}
