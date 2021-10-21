import 'package:flutter/material.dart';

class MostWantedWidget extends StatelessWidget {
  const MostWantedWidget({
    Key? key,
    required this.posicao,
    required this.name,
    required this.views,
    required this.album,
    this.press,
  }) : super(key: key);

  final String posicao, name, album, views;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              posicao,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Container(
              height: 48,
              width: 48,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(album),
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: name,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: '\n$views',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 5),
            IconButton(
              icon: Icon(
                Icons.more_vert_rounded,
              ),
              tooltip: 'Configurações',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
