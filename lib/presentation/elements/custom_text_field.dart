


import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? validator;
  bool obsecureText;
  bool isPasswordField;
  final IconData? prefixIcon;
  final IconData? suffixicon;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final int? maxline;
  final bool isPrefixIcon;


  CustomTextField({
    super.key,
    required this.hintText,
    this.suffixicon,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.obsecureText = false,
    this.isPasswordField = false,
    this.textAlign,
    this.textInputType,
    this.maxline=1,
     this.isPrefixIcon=false,
  });

  @override
  State<CustomTextField> createState() => _CuctomTextFieldState();
}

class _CuctomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxline??1,
    keyboardType:widget.textInputType??TextInputType.text,
      textAlign: widget.textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.caption,
        cursorColor: Color(0xffbb6c5e),
      controller: widget.controller,
      validator: (val) => widget.validator!(val!),
      obscureText: widget.obsecureText,
      decoration: InputDecoration(
        isDense: true,


        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.overline,
        prefixIcon: widget.isPrefixIcon ? Icon(widget.prefixIcon):null,
        suffixIcon: widget.isPasswordField
            ? GestureDetector(
            onTap: () {
              setState(() {
                widget.obsecureText = !widget.obsecureText;
              });
            },
            child: Icon(
              widget.obsecureText
                  ? Icons.visibility_off
                  : Icons.visibility,
              size: 18,
              color: Color(0xff191919),
            ))
            : Icon(widget.suffixicon),
      ),
    );
  }
}
