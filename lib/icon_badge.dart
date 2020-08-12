library icon_badge;

import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final int itemCount;
  final bool showZero;
  final Color badgeColor;
  final double top;
  final double right;
  final double left;
  final double bottom;

  const IconBadge({
    Key key,
    this.onTap,
    @required this.iconData,
    this.itemCount,
    this.showZero,
    this.badgeColor,
    this.top = 5.0,
    this.right = 6.0,
    this.left,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 72,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
              ],
            ),
            Positioned(
              top: top,
              right: right,
              left: left == null ? 0 : left,
              bottom: bottom == null ? 0 : bottom,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: badgeColor),
                alignment: Alignment.center,
                child: Text('$itemCount'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
