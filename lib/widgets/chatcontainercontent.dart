import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stroll/helpers/audiohelper.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:stroll/helpers/constants.dart';
import 'package:stroll/widgets/audiowavestack.dart';
import 'package:widget_marquee/widget_marquee.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll/widgets/backgroundaudiowave.dart';
import 'package:stroll/widgets/foregroundaudiowave.dart';

class ChatContainerContent extends StatefulWidget {
  const ChatContainerContent({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatContainerContent> createState() => _ChatContainerContentState();
}

class _ChatContainerContentState extends State<ChatContainerContent> {
  bool _enableMarqueeEffect = false;
  final _player = AudioPlayer();

  @override
  void initState() {
    _init();
    super.initState();
  }

  void _init() {
    AudioHelper.play(_player);
    _enableDelayedMarquee();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              "What does sports mean to you?",
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.pause, color: Colors.white, size: 20),
            const SizedBox(
              width: 5,
            ),
            _enableMarqueeEffect
                ? const SizedBox(
                    width: 200,
                    child: Marquee(
                      child: ForegroundAudioWave(
                        animated: false,
                      ),
                      loopDuration: Duration(milliseconds: 9200),
                    ),
                  )
                : const AudioWaveStack(),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "00:26",
            textAlign: TextAlign.end,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
            ),
          ),
          alignment: Alignment.centerRight,
        )
      ],
    );
  }

  void _enableDelayedMarquee() {
    Future.delayed(Duration(milliseconds: Constants.kAnimDurationMillis),
        () => setState(() => _enableMarqueeEffect = true));
  }
}
