import 'package:flutter/material.dart';
import 'package:tudu/app/utils/widgets/background_wave.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final Widget child;

  MySliverAppBar({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset = shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (100 - adjustedShrinkOffset) * 0.2;
    double topPadding = MediaQuery.of(context).padding.top + 10;

    return Stack(
      children: [
        const BackgroundWave(
          height: 190,
        ),
        Positioned(
          top: topPadding + offset,
          left: 16,
          right: 16,
          child: child,
        )
      ],
    );
  }

  @override
  double get maxExtent => 190;

  @override
  double get minExtent => 110;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
