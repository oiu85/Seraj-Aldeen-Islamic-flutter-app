import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../config/appconfig/app_colors.dart';

/// Generic filter option model
class FilterOption<T> {
  final T value;
  final String label;
  final bool isSelected;

  const FilterOption({
    required this.value,
    required this.label,
    this.isSelected = false,
  });

  FilterOption<T> copyWith({
    T? value,
    String? label,
    bool? isSelected,
  }) {
    return FilterOption<T>(
      value: value ?? this.value,
      label: label ?? this.label,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

class FilterButton<T> extends StatefulWidget {
  final List<FilterOption<T>> options;
  final T? selectedValue;
  final String? label;
  final Function(T? value)? onChanged;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String? hintText;

  const FilterButton({
    super.key,
    required this.options,
    this.selectedValue,
    this.label,
    this.onChanged,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.hintText,
  });

  @override
  State<FilterButton<T>> createState() => _FilterButtonState<T>();
}

class _FilterButtonState<T> extends State<FilterButton<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  void didUpdateWidget(FilterButton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedValue != oldWidget.selectedValue) {
      _selectedValue = widget.selectedValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtilRes.width(4), 
        vertical: ScreenUtilRes.height(0)
      ),
      height: widget.height ?? ScreenUtilRes.height(40),
      width: widget.width ?? ScreenUtilRes.width(80),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
        ),
        borderRadius: BorderRadius.circular(ScreenUtilRes.radius(10)),
        color: widget.backgroundColor ?? AppColors.cardBackground.withOpacity(0.54),
      ),
      child: DropdownButton<T>(
        value: _selectedValue,
        hint: Text(
          widget.hintText ?? 'اختر',
          style: TextStyle(
            fontSize: ScreenUtilRes.fontSize(14),
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.bold,
            color: widget.textColor ?? AppColors.textPrimary.withOpacity(0.54),
          ),
        ),
        isExpanded: true,
        underline: const SizedBox(), // Remove default underline
        icon: Icon(
          Icons.arrow_drop_down_outlined,
          size: ScreenUtilRes.fontSize(25),
          color: widget.textColor ?? AppColors.textPrimary,
        ),
        iconSize: ScreenUtilRes.fontSize(40),
        borderRadius: BorderRadius.circular(ScreenUtilRes.radius(10)),
        items: widget.options.map((FilterOption<T> option) {
          return DropdownMenuItem<T>(
            value: option.value,
            child: Padding(
              padding: const EdgeInsets.only(right: 2),
              child: Text(
                option.label,
                style: TextStyle(
                  fontSize: ScreenUtilRes.fontSize(18),
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (T? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          widget.onChanged?.call(newValue);
        },
      ),
    );
  }
}