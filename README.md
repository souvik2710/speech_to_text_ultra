## Author

Souvik Das
[Link to Profile](https://www.linkedin.com/in/souvik2710/)

## Speech To Text Ultra

This Flutter package designed to address the inconvenience of sudden pauses during speech recognition.
With manual control over pause and play functionality, users can now dictate paragraphs without interruptions, ensuring a
seamless and uninterrupted speech recognition experience. Elevate your Flutter applications with improved speech interaction,
empowering users to communicate effortlessly and effectively.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  speech_to_text_ultra: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:speech_to_text/speech_to_text.dart';
```


## Example
[comment]: <> (<hr>)

<table>
<tr>
<td>

```dart
class SpeechToTextUltraWidgetImplementation extends StatefulWidget {
  const SpeechToTextUltraWidgetImplementation({super.key});

  @override
  State<SpeechToTextUltraWidgetImplementation> createState() => _SpeechToTextUltraWidgetImplementationState();
}

class _SpeechToTextUltraWidgetImplementationState extends State<SpeechToTextUltraWidgetImplementation> {
  bool mIsListening = false;
  String mEntireResponse = '';
  String mLiveResponse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle :true,
        title: const Text('Speech To Text Ultra',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mIsListening
                  ? Text('$mEntireResponse $mLiveResponse')
                  : Text(mEntireResponse),
              const SizedBox(height: 20),
              SpeechToTextUltra(
                ultraCallback:
                    (String liveText, String finalText, bool isListening) {
                  setState(() {
                    mLiveResponse = liveText;
                    mEntireResponse = finalText;
                    mIsListening = isListening;
                  });
                },
                // toPauseIcon: const Icon(Icons.pause),
                // toStartIcon: const Icon(Icons.mic),
                // pauseIconColor: Colors.black,
                // startIconColor: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

</td>
</tr>
</table>

## Features

- Seamlessly pause and resume speech recognition manually for uninterrupted dictation.
- Eliminate sudden pauses during speech input, ensuring smooth and uninterrupted interactions.
- Empower users to dictate entire paragraphs without interruptions or breaks.
- Enhance user experience by providing manual control over speech recognition pause/play functionality.
- Streamline speech input in Flutter applications with intuitive pause and play features.