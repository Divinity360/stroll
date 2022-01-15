import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stroll/widgets/avatar.dart';
import 'package:stroll/widgets/chatcontainer.dart';

class WaveFormPage extends StatefulWidget {
  const WaveFormPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WaveFormPageState();
}

class _WaveFormPageState extends State<WaveFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [ChatContainer(), Avatar()],
        )
      ]),
    );
  }
}
