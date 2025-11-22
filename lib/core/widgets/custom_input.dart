import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/utils/validators.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.title,
    this.hint,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.validator,
    this.controller,
    this.keyboardType,
    this.debounce = false,
    this.textInputAction = TextInputAction.next,
    this.required = true,
    this.maxLength,
    this.initialValue,
    this.showAsterisk = true,
    this.enabled = true,
    this.maxLines,
    this.minLines,
    this.note,
    this.noTitle = false,
    this.titleSuffix,
  }) : _obscureNotifier = null;

  CustomInput.obscure({
    super.key,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.required = false,
    this.showAsterisk = true,
    this.title = 'N/A',
    this.titleSuffix,
  }) : hint = null,
       prefix = null,
       maxLength = null,
       noTitle = false,
       maxLines = null,
       minLines = null,
       onChanged = null,
       validator = sl<Validators>().password,
       keyboardType = TextInputType.visiblePassword,
       debounce = false,
       suffix = null,
       note = null,
       initialValue = null,
       enabled = true,
       _obscureNotifier = ValueNotifier(true),
       assert(controller != null);

  final bool noTitle;
  final int? maxLines;
  final int? minLines;
  final bool enabled;
  final String title;
  final String? note;
  final String? hint;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String value)? onChanged;
  final bool debounce;
  final bool required;
  final TextInputAction textInputAction;
  final bool showAsterisk;
  final ValueNotifier<bool>? _obscureNotifier;
  final String? initialValue;
  final int? maxLength;
  final Widget? titleSuffix;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  void _changeObscure() {
    widget._obscureNotifier!.value = !widget._obscureNotifier!.value;
  }

  Widget? get _suffix {
    if (widget.suffix == null) return null;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 24.h,
            child: VerticalDivider(color: Colors.grey[30]),
          ),
          widget.suffix!,
        ],
      ),
    );
  }

  Function(String value)? get _onChanged {
    if (widget.onChanged == null) return null;

    return widget.onChanged;
  }

  String? Function(String?)? get _validator {
    if (widget.validator != null) return widget.validator;
    if (widget.required) {
      return (value) => sl<Validators>().required(value, title: widget.title);
    }
    return null;
  }

  @override
  void dispose() {
    widget._obscureNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (!widget.noTitle)
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.title,

                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF336f54),
                    ),
                  ),
                  if (widget.required && widget.showAsterisk)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        4.horizontalSpace,
                        Text(
                          '*',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  if (widget.titleSuffix != null) widget.titleSuffix!,
                ],
              ),
            if (widget.note != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  4.horizontalSpace,
                  Text(
                    widget.note!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
          ],
        ),
        8.verticalSpace,
        Builder(
          builder: (context) {
            if (widget._obscureNotifier != null) {
              return ValueListenableBuilder(
                valueListenable: widget._obscureNotifier!,
                builder: (context, value, child) => TextFormField(
                  obscureText: value,
                  validator: widget.validator,
                  controller: widget.controller,
                  textInputAction: widget.textInputAction,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: _changeObscure,
                      icon: Builder(
                        builder: (context) {
                          IconData icon = Icons.visibility_outlined;
                          if (!value) icon = Icons.visibility_off_outlined;
                          return Icon(icon);
                        },
                      ),
                    ),
                  ),
                ),
              );
            }
            return TextFormField(
              initialValue: widget.initialValue,
              validator: _validator,
              enabled: widget.enabled,
              onChanged: _onChanged,
              minLines: widget.minLines ?? 1,
              maxLength: widget.maxLength,
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              inputFormatters: [
                if (widget.keyboardType == TextInputType.number ||
                    widget.keyboardType == TextInputType.phone)
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              maxLines: widget.maxLines,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                hintText: widget.hint,
                prefixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(start: 12.0.w),
                  child: widget.prefix,
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 24.h,
                  minWidth: 24.w,
                ),
                suffixIcon: _suffix,
              ),
            );
          },
        ),
      ],
    );
  }
}
