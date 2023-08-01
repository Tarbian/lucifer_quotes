import 'package:lucifer_quotes/lucifer_quotes.dart';
import 'package:test/test.dart';

void main() {
  group('LuciferQuotes', () {
    LuciferQuotes luciferQuotes = LuciferQuotes();

    test('getRandomQuote returns a Map with quote and author', () async {
      Map<String, dynamic> randomQuote = await luciferQuotes.getRandomQuote();
      expect(randomQuote, contains('quote'));
      expect(randomQuote, contains('author'));
    });

    test('getMultipleQuotes returns a List of Maps with quote and author', () async {
      int count = 5;
      List<Map<String, dynamic>> multipleQuotes = await luciferQuotes.getMultipleQuotes(count);
      expect(multipleQuotes, isA<List<Map<String, dynamic>>>());

      for (var quote in multipleQuotes) {
        expect(quote, contains('quote'));
        expect(quote, contains('author'));
      }
    });

    test('getMultipleQuotes with count <= 0 returns an empty List', () async {
      int count = 0;
      List<Map<String, dynamic>> multipleQuotes = await luciferQuotes.getMultipleQuotes(count);
      expect(multipleQuotes, isEmpty);
      count = -666;
      multipleQuotes = await luciferQuotes.getMultipleQuotes(count);
      expect(multipleQuotes, isEmpty);
    });
  });
}
