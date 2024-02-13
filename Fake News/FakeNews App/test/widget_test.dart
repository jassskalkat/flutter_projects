// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:a1_fakenews/news/model/news_item.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('NewsItem', () {
    test('equals', () {
      final date = DateTime.now();
      final newsItem1 = NewsItem('headline1', 'body1', 'author1', date, 'image1', false);
      final newsItem2 = NewsItem('headline1', 'body1', 'author1', date, 'image1', false);
      final newsItem3 = NewsItem('headline3', 'body3', 'author3', date, 'image3', false);

      expect(newsItem1, newsItem2);
      expect(newsItem1, isNot(newsItem3));
    });

    test('hashCode', () {
      final date = DateTime.now();
      final newsItem1 = NewsItem('headline1', 'body1', 'author1', date, 'image1', false);
      final newsItem2 = NewsItem('headline1', 'body1', 'author1', date, 'image1', false);

      expect(newsItem1.hashCode, newsItem2.hashCode);
    });

    test('readVersion', () {
      final date = DateTime.now();
      final newsItem = NewsItem('headline1', 'body1', 'author1', date, 'image1', false);
      final readNewsItem = newsItem.readVersion();

      expect(readNewsItem.isRead, true);
    });
  });
}
