import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class VoiceExampleScreen extends StatefulWidget {
  late final  SpeechToText speech;
  final bool isListening = false;
  final String words ='';
  final String entireResponse = '';
    VoiceExampleScreen({super.key});

  @override
  State<VoiceExampleScreen> createState() => _VoiceExampleScreenState();
}

class _VoiceExampleScreenState extends State<VoiceExampleScreen> {


  @override
  void initState() {
    super.initState();
    widget.speech = SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Input'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isListening ? Text('$entireResponse + $words'):Text(entireResponse),
            SizedBox(height: 20),
            isListening
                ? IconButton(
              icon: Icon(Icons.pause),
              onPressed: () {
                stopListening();
              },
            )
                : IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {
                startListening();
              },
            ),
          ],
        ),
      ),
    );
  }
  void startListening() async {
    bool available = await speech.initialize(
      onStatus: (status) async{
        print('Speech recognition status: $status');
        if(status=="done" &&  isListening ){
          // notListening
          debugPrint('111111 start');
          await speech.stop();
          debugPrint('WORDS---> ${words}');
          setState(() {
            if(words!='') {
              entireResponse = '$entireResponse || $words';
              debugPrint('ENTIRE RESPONSE---> $entireResponse');
            }
            words = '';
            // stt.SpeechToText s =  stt.SpeechToText();
          });
          startListening();
          debugPrint('111111 end');
        }
      },
      onError: (error) {
        print('Speech recognition error: $error');
      },
    );

    if (available) {
      setState(() {
        isListening = true;
      });
      speech.listen(
        onResult: (result) {
          setState(() {
            final state = result.recognizedWords;
            debugPrint('@@@@  ${state}');
            words = state;
            // final words = result.recognizedWords;
            // debugPrint('@@@@  $words');
            // debugPrint('@@@@  ${entireResponse}');
          });
        },
      );
    } else {
      print('Speech recognition not available');
    }
  }

  void stopListening() {
    speech.stop();
    setState(() {
      isListening = false;
    });
  }

}


