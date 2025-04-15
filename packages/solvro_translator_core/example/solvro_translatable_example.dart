import "package:solvro_translator_core/solvro_translator_core.dart";

class MyLocalTranslation implements TranslationResults {
  @override
  final String translatedText;
  final DateTime timestamp;

  const MyLocalTranslation(this.translatedText, this.timestamp);
}

class MyRemoteTranslation implements TranslationResults {
  @override
  final String translatedText;

  const MyRemoteTranslation(this.translatedText);
}

// Implement local manager
class MyLocalManager implements LocalTranslatableManager<MyLocalTranslation, MyRemoteTranslation> {
  @override
  Future<MyLocalTranslation?> getTranslation(String md5Hash, SolvroLocale locale) async {
    // Mock implementation - in real usage, fetch from local storage
    return MyLocalTranslation("Cached: $hash", DateTime.now());
  }

  @override
  Future<void> saveTranslation(MyRemoteTranslation translation) async {
    // Mock implementation - in real usage, save to local storage
  }

  @override
  Future<void> deleteOldTranslations(Duration duration) async {
    // Mock implementation - in real usage, delete old translations from storage
  }
}

// Implement remote manager
class MyRemoteManager implements RemoteTranslatableManager<MyRemoteTranslation> {
  @override
  Future<MyRemoteTranslation> translate(String text, SolvroLocale from, SolvroLocale to) async {
    // Mock implementation - in real usage, call translation API
    return MyRemoteTranslation("Remote: $text");
  }
}

// Create a translator instance
final translator = SolvroTranslator<MyLocalTranslation, MyRemoteTranslation>.init(
  localTranslatableManager: MyLocalManager(),
  remoteTranslatableManager: MyRemoteManager(),
  validityCheck: (translation) => DateTime.now().difference(translation.timestamp).inDays < 30,
  sourceLocale: SolvroLocale.pl,
);

void main() async {
  final translated = await translator.translate("Hello world", SolvroLocale.en);
  // ignore: avoid_print
  print(translated);
}
