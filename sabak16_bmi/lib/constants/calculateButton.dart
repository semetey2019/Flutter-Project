import 'package:flutter/cupertino.dart';
import 'package:sabak16_bmi/constants/app_colors.dart';
import 'package:sabak16_bmi/constants/app_texts.dart';
import 'package:sabak16_bmi/theme/app_text_style.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      color: AppColors.pinkColor,
      child: const Center(
        child: Text(
          AppTexts.calculator,
          style: AppTextStyles.calculateStyle,
        ),
      ),
    );
  }
}
