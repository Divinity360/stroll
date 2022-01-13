import 'package:flutter/material.dart';
import 'customshape.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 18, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          Flexible(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xff2D3140),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: Column(
                    children: const [
                      Text(
                        "What does sports mean to you?",
                        style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: CustomPaint(painter: CustomShape(Color(0xff2D3140))),
                padding: const EdgeInsets.only(top: 20, left: 0),
                transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
