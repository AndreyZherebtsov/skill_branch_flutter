/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/screens/feed_screen.dart';
//import '../lib/screens/photo_screen.dart';
import '../lib/widgets/widgets.dart';

void main() {
  // testWidgets('LikeButton', (WidgetTester tester) async {
  //   await tester.pumpWidget(MaterialApp(home: LikeButton(likeCount: 10, isLiked: true)));

  //   final titleFinder = find.text('10');
  //   final messageFinder = find.byIcon(AppIcons.like_fill);

  //   expect(titleFinder, findsOneWidget);
  //   expect(messageFinder, findsOneWidget);
  // });

  testWidgets('Photo', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Photo(photoLink: kFlutterDash, key: Key('Photo'))));

    final titleFinder = find.byKey(Key('Photo'));

    expect(titleFinder, findsOneWidget);
  });

  testWidgets('FullScreenImage -> altDescription', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FullScreenImage(
          altDescription: 'Test altDescription',
          key: Key('FullScreenImage'),
        ),
      ),
    );

    final titleFinder = find.byKey(Key('FullScreenImage'));
    final altDescription = find.text('Test altDescription');

    expect(titleFinder, findsOneWidget);
    expect(altDescription, findsOneWidget);
  });

  testWidgets('FullScreenImage -> userName', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FullScreenImage(
          userName: 'kaparray',
          key: Key('FullScreenImage'),
        ),
      ),
    );
*/
