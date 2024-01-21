import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground, // 영역확인을 위해
      height: 60,
      child: Row(
        children: [
          width10,
          Image.asset("$basePath/icon/toss.png", height: 30),
          Expanded(child: Container()),
          Image.asset("$basePath/icon/map_point.png", height: 30),
          width10,
          Image.asset("$basePath/icon/notification.png", height: 30),
          width10
        ],
      ),
    );
  }
}
