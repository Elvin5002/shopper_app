import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import '../../../../utils/constants/app_borders.dart';
import '../../../../utils/constants/app_colors.dart';

class CustomInput extends StatelessWidget {
  CustomInput({
    super.key,
    this.hint,
    this.label,
    this.prefix,
    this.suffix,
    this.isDisabled = false,
    this.controller,
    this.onTap,
    this.keyboardType = TextInputType.text,
    required this.title,
    this.height = 55,
    this.onChanged,
  }) : isDate = false;

  CustomInput.datePicker({
    super.key,
    this.hint = 'Select a date',
    this.label,
    this.prefix = Icons.date_range,
    this.suffix,
    required this.title,
    this.isDisabled = true,
    this.isDate = true,
    this.controller,
    this.keyboardType = TextInputType.datetime,
    this.height = 55,
  })  : onTap = null,
        onChanged = null;

  final String? hint;
  final double? height;
  final String? label;
  final IconData? prefix;
  final IconData? suffix;
  final String title;
  final bool isDisabled;
  final TextEditingController? controller;
  final bool isDate;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  DateTime selectedDate = DateTime.now();

  selectDate({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      firstDate: DateTime(2000),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    controller!.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        10.h,
        SizedBox(
          height: height,
          child: TextFormField(
            controller: controller,
            onTap: isDate ? () => selectDate(context: context) : onTap,
            keyboardType: keyboardType,
            readOnly: isDisabled,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: AppBorders.inputBorder,
              enabledBorder: AppBorders.inputBorder,
              disabledBorder: AppBorders.inputBorder,
              focusedBorder: AppBorders.inputBorder,
              errorBorder: AppBorders.errorInputBorder,
              focusedErrorBorder: AppBorders.focusedBorder,
              hintText: hint,
              labelText: label,
              prefixIcon: Icon(
                prefix,
                color: AppColors.gray,
              ),
              suffixIcon: Icon(suffix),
            ),
          ),
        ),
      ],
    );
  }
}
