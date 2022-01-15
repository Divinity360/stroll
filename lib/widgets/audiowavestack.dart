import 'package:flutter/cupertino.dart';
import 'package:stroll/widgets/backgroundaudiowave.dart';
import 'package:stroll/widgets/foregroundaudiowave.dart';

class AudioWaveStack extends StatelessWidget {
  const AudioWaveStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: const [BackgroundAudioWave(), ForegroundAudioWave()]);
  }
}