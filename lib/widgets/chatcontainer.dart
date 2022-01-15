import 'package:flutter/material.dart';
import 'package:stroll/widgets/chatcontainercontent.dart';
import 'customshape.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right: 2.0, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 265,
            padding:
            const EdgeInsets.only(left: 17, right: 9, top: 33, bottom: 17),
            decoration: const BoxDecoration(
              color: Color(0xff2D3140),
              borderRadius: BorderRadius.all(Radius.circular(19)),
            ),
            child: const ChatContainerContent(),
          ),
          Container(
            child: CustomPaint(painter: CustomShape(Color(0xff2D3140))),
            padding: const EdgeInsets.only(top: 90, left: 0),
            transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
          ),
        ],
      ),
    );
  }
}
