import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final double cornerRadius;
  final IconData icon;
  final String hintText;
  final FontWeight fontWeight;
  final bool isPassword;
  final Color boxColor;
  final Color fontColor;
  final IconData? rightIcon;
  final VoidCallback? onTap;

  const CustomTextFormField(
      {Key? key,
      required this.cornerRadius,
      required this.icon,
      required this.hintText,
      required this.fontWeight,
      required this.isPassword,
      required this.boxColor,
      required this.fontColor,
      this.rightIcon,
      this.onTap})
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
          color: widget.boxColor,
          borderRadius: BorderRadius.circular(widget.cornerRadius)),
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 20,
            color: widget.fontColor,
          ),
          const SizedBox(width: 8),
          Expanded(
              child: TextFormField(
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: widget.fontColor,
                  fontSize: 16,
                  fontWeight: widget.fontWeight,
                )),
          )),
          if (widget.rightIcon != null && !widget.isPassword)
            GestureDetector(
              onTap: widget.onTap,
              child: Icon(
                widget.rightIcon,
                size: 24,
                color: widget.fontColor,
              ),
            ),
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
