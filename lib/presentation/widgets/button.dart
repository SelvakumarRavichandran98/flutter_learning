import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_learning/presentation/common/colors.dart';
import 'package:flutter_learning/presentation/common/size_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppButtonWidget extends HookConsumerWidget {
  const AppButtonWidget({
    super.key,
    this.onTap,
    this.text = 'Button',
    this.width = 100,
    this.height = 50,
    this.elevation = 5,
    this.radius = 10,
    this.color = AppColors.primary,
    this.alignment = Alignment.center,
  });

  final Future<void> Function()? onTap;
  final Alignment alignment;
  final Color color;
  final double elevation;
  final double height;
  final double radius;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);

    return Card(
      elevation: elevation,
      child: Container(
        alignment: alignment,
        width: width.wr,
        height: height.wr,
        decoration: BoxDecoration(
          color: isLoading.value ? AppColors.greyLight : color,
          borderRadius: BorderRadius.circular(radius.wr),
        ),
        child: InkWell(
          onTap: () async {
            if (isLoading.value) return;
            if (context.mounted) isLoading.value = true;
            if (onTap != null) await onTap!();
            if (context.mounted) isLoading.value = false;
          },
          child: !isLoading.value
              ? AutoSizeText(
                  text,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                )
              : SizedBox(
                  height: 0.5 * height.wr,
                  width: 0.5 * height.wr,
                  child: const CircularProgressIndicator(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
