
# Lucifer Quotes

`lucifer_quotes.dart` is a library for getting random quotes from the `Lucifer` series. It provides an easy way to get quotes from the [lucifer-quotes.vercel.app](https://lucifer-quotes.vercel.app/)


## Features

- Get random quote
- Get multiple random quotes



## Installation

- Open your pubspec.yaml file and add the dependency to library. Instead of version, specify a link to your GitHub repository, including the branch you want to use.

    An example of a pubspec.yaml file:
    ```yaml
    name: my_flutter_app
    description: My awesome Flutter app

    dependencies:
    flutter:
        sdk: flutter
    lucifer_quotes:
        git:
        url: https://github.com/Tarbian/lucifer_quotes.git
        ref: main
    ```
- After you make changes to your pubspec.yaml, run the `flutter pub get` command to download your library from GitHub and install it as a dependency in your project.
## Example

```dart
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
```


## License

[MIT](https://github.com/Tarbian/ucifer_quotes/blob/main/LICENSE)

