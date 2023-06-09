import 'package:flutter/material.dart';

import '../../core/theme/style.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.actions});
  final Widget? title;
  final List<Widget>? actions;
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      actions: actions,
      elevation: 0,
      title: title,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: fontColor,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      toolbarTextStyle: const TextTheme().bodyMedium,
      titleTextStyle: const TextTheme().titleLarge,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
