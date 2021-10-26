import 'package:flutter/material.dart';

class SingerPicWidget extends StatelessWidget {
  final String? pic;
  final VoidCallback? onTap;
  final double picSize;

  const SingerPicWidget({
    Key? key,
    this.pic,
    this.onTap,
    required this.picSize,
  }) : super(key: key);

  const SingerPicWidget.small({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 24,
        super(key: key);
  const SingerPicWidget.medium({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 100,
        super(key: key);

  const SingerPicWidget.large({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 130,
        super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _profliePicWidget(context),
    );
  }

  Widget _profliePicWidget(BuildContext context) {
    if (pic != null) {
      return Container(
        width: picSize,
        height: picSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(100),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(100),
          ),
          child: Container(
            child: Image.network(
              pic!,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: picSize,
        height: picSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(100),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(100),
          ),
          child: Container(
            child: Image.network(
              "https://i.scdn.co/image/ab6761610000e5eb09bf4814c6585e1f69dfeef7",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      );
    }
  }
}
