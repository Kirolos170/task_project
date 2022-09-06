import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: isSelected ? Get.theme.primaryColor : Colors.white,
              border:
              Border.all(width: 2, color: isSelected ? Get.theme.primaryColor : Get.theme.colorScheme.secondary)),
          child: Center(
            child: Text(
              '$label',
              style: TextStyle(
                color: isSelected ? Colors.white : Get.theme.colorScheme.secondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          )),
    );
  }
}