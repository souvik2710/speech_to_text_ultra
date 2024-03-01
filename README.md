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
## Images


#### radial type
<p align="center">
<img src="https://raw.githubusercontent.com/souvik2710/versatile_gradient_text/master/images/gradient2.png" width="400" height="180" hspace="20"/>
</p>


#### linear type
<p align="center">
<img src="https://raw.githubusercontent.com/souvik2710/versatile_gradient_text/master/images/gradient1.png" width="400" height="180" hspace="20"/>
</p>


## Example


[comment]: <> (<hr>)

<table>
<tr>
<td>

```dart
class DemoGradientScreen extends StatelessWidget {
  const DemoGradientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: VersatileGradientText(
            textString: 'Gradient Text',
            colorOne: Colors.yellow, colorTwo: Colors.deepOrange,
            fontSize: 40, versatileGradientType: VersatileGradientType.radial,)
      ),
    );
  }
}
```

</td>
</tr>
</table>

[comment]: <> (## Next Goals)

[comment]: <> (- [ ] Make more ui and buttons more robust.)

[comment]: <> (  Now all the buttons and functionalities are constant.In the future need to make it more customisable.)

[comment]: <> (- [x] Handle all exceptions)

[comment]: <> (  Handling of exceptions complete)

[comment]: <> (- [ ] Add the calculator only as a side container or as a part of another widget.)[//]: # (<!--)

[//]: # (This README describes the package. If you publish this package to pub.dev,)

[//]: # (this README's contents appear on the landing page for your package.)

[//]: # ()
[//]: # (For information about how to write a good package README, see the guide for)

[//]: # ([writing package pages]&#40;https://dart.dev/guides/libraries/writing-package-pages&#41;.)

[//]: # ()
[//]: # (For general information about developing packages, see the Dart guide for)

[//]: # ([creating packages]&#40;https://dart.dev/guides/libraries/create-library-packages&#41;)

[//]: # (and the Flutter guide for)

[//]: # ([developing packages and plugins]&#40;https://flutter.dev/developing-packages&#41;.)

[//]: # (-->)

[//]: # ()
[//]: # (TODO: Put a short description of the package here that helps potential users)

[//]: # (know whether this package might be useful for them.)

[//]: # ()
[//]: # (## Features)

[//]: # ()
[//]: # (TODO: List what your package can do. Maybe include images, gifs, or videos.)

[//]: # ()
[//]: # (## Getting started)

[//]: # ()
[//]: # (TODO: List prerequisites and provide or point to information on how to)

[//]: # (start using the package.)

[//]: # ()
[//]: # (## Usage)

[//]: # ()
[//]: # (TODO: Include short and useful examples for package users. Add longer examples)

[//]: # (to `/example` folder.)

[//]: # ()
[//]: # (```dart)

[//]: # (const like = 'sample';)

[//]: # (```)

[//]: # ()
[//]: # (## Additional information)

[//]: # ()
[//]: # (TODO: Tell users more about the package: where to find more information, how to)

[//]: # (contribute to the package, how to file issues, what response they can expect)

[//]: # (from the package authors, and more.)
