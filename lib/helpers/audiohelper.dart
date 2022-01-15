import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:stroll/helpers/constants.dart';

class AudioHelper {

  static void play(AudioPlayer player) async {
    ByteData bytes = await rootBundle.load(Constants.kUrl); //load sound from assets
    Uint8List soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    await player.playBytes(soundbytes);
  }

  static void pause(AudioPlayer player) => player.pause();
}
