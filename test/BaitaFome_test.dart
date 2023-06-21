import 'package:baitafome/models/recipe.dart';
import 'package:baitafome/models/type.dart';
import 'package:baitafome/pages/categorys.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('BaitaFome Test', () {
    test('Create Type and Recipe Test', () {
      Type type = Type(id: 7, description: 'Description Type Test');

      Recipe recipe = Recipe(
        id: 10,
        name: 'Name Recipe Test',
        description: 'Description Recipe Test',
        type: type.id,
      );

      expect(recipe.id, 10);
      expect(recipe.name, 'Name Recipe Test');
      expect(recipe.description, 'Description Recipe Test');
      expect(recipe.type, 7);
    });

    testWidgets('Categorys have at least one Card', (tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: Categorys())));
      //await tester.pumpWidget(const SplashPage());
      final hasIndicator = find.byType(Card);

      expect(hasIndicator, findsWidgets);
    });

    testWidgets('Categorys dont have SingleChildScrollView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: Categorys())));
      //await tester.pumpWidget(const SplashPage());
      final hasIndicator = find.byType(SingleChildScrollView);

      expect(hasIndicator, findsNothing);
    });
  });
}
