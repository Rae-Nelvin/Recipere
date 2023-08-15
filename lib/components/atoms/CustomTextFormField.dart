import 'package:flutter/material.dart';
import 'package:recipere/configs/CustomColors.dart';

class CustomTextFormField extends StatefulWidget {
  final String icon;
  final String hintText;
  final bool isPassword;

  const CustomTextFormField(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.isPassword})
      : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isPasswordVisible;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: CustomColors.quartenary,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(widget.icon, width: 16, height: 16),
          const SizedBox(width: 8),
          Expanded(
              child: TextFormField(
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                  color: CustomColors.secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
          )),
          if (widget.isPassword)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              child: Image.asset(
                'lib/assets/icons/show-password-icon.png',
                width: 20,
                height: 18,
              ),
            )
        ],
      ),
    );
  }
}
