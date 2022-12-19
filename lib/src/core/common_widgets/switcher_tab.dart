import 'package:flutter/material.dart';
import 'package:todo_app_clean_architecture/src/core/constants/constants.dart';

class SwitcherTabData {
  final String label;
  final Widget child;

  const SwitcherTabData({
    required this.label,
    required this.child,
  });
}

class SwitcherTab extends StatefulWidget {
  const SwitcherTab({
    Key? key,
    required this.tabData,
    this.onSelectionChanged,
  }) : super(key: key);

  final List<SwitcherTabData> tabData;
  final ValueChanged<int>? onSelectionChanged;

  @override
  State<SwitcherTab> createState() => _SwitcherTabState();
}

class _SwitcherTabState extends State<SwitcherTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceVariant,
            borderRadius: BorderRadius.circular(kTextTabBarHeight),
          ),
          child: Row(
            children: [
              for (int i = 0; i < widget.tabData.length; i++)
                Expanded(
                  child: SizedBox(
                    height: kTextTabBarHeight,
                    child: AnimatedContainer(
                      clipBehavior: Clip.antiAlias,
                      decoration: i == selectedIndex
                          ? BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius:
                                  BorderRadius.circular(kTextTabBarHeight))
                          : const BoxDecoration(),
                      duration: const Duration(milliseconds: 200),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(kTextTabBarHeight),
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                            widget.onSelectionChanged?.call(i);
                          });
                        },
                        child: Center(
                          child: Text(
                            widget.tabData[i].label,
                            style: TextStyle(
                              color: i == selectedIndex
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        verticalGap16,
        AnimatedSwitcher(
          key: ValueKey('Selected: $selectedIndex'),
          duration: const Duration(milliseconds: 200),
          child: widget.tabData[selectedIndex].child,
        )
      ],
    );
  }
}
