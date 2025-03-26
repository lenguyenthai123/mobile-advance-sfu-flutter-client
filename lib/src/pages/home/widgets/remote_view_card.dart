import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart' as RTC;

import '../../../public/constant.dart' as size;

class RemoteViewCard extends StatefulWidget {
  final RTC.RTCVideoRenderer remoteRenderer;
  RemoteViewCard({
    required this.remoteRenderer,
  });

  @override
  State<StatefulWidget> createState() => _RemoteViewCardState();
}

class _RemoteViewCardState extends State<RemoteViewCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  endCall() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.remoteRenderer.textureId == null
          ? Container()
          : FittedBox(
        fit: BoxFit.cover,
        child: Container(
          height: size.width * .45,
          width: size.width * .45,
          transform: Matrix4.identity(),
          alignment: FractionalOffset.center,
          child: Texture(textureId: widget.remoteRenderer.textureId!),
        ),
      ),
    );
  }
}