import 'package:lucifer_quotes/lucifer_quotes.dart';

void main() async {
  LuciferQuotes quotes = LuciferQuotes();

  Map randomQuote = await quotes.getRandomQuote();
  print("Random Quote:");
  print("- ${randomQuote['quote']}");
  print("  by ${randomQuote['author']}");

  int count = 5;
  List multipleQuotes =
      await quotes.getMultipleQuotes(count);

  print("Multiple Quotes:");
  for (var quote in multipleQuotes) {
    print("- ${quote['quote']}");
    print("  by ${quote['author']}");
  }

  print("One from list:");
  print("- ${multipleQuotes[4]['quote']}");
  print("  by ${multipleQuotes[4]['author']}");
}
