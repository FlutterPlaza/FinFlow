import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
    required this.tabController,
    this.onTap,
    required this.box,
  });

  final TabController tabController;
  final BoxConstraints box;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    final theme = Theme.of(context);
    return TabBar(
      padding: EdgeInsets.all(box.maxHeight * 0.008),
      labelColor: theme.colorScheme.secondary,
      unselectedLabelColor: theme.colorScheme.surface,
      unselectedLabelStyle: theme.textTheme.titleSmall,
      controller: tabController,
      onTap: onTap,
      indicator: BoxDecoration(
        color: theme.colorScheme.onSurface,
        borderRadius: BorderRadius.circular(
          box.maxWidth * 0.01,
        ),
      ),
      tabs: [
        Tab(
          child: Text(
            'Scan Code',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ),
        Tab(
          child: Text(
            'My Code',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        )
      ],
    );
  }
}
