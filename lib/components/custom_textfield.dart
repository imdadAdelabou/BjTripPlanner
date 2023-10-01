import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";

class CustomTextField extends StatefulWidget {
  final bool filled;
  final Color fillColor;
  final String? hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TypeInput typeInput;

  const CustomTextField({
    super.key,
    this.filled = true,
    this.fillColor = Colors.grey,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.typeInput = TypeInput.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    isOpen = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.lato(
            fontSize: 13.0,
          ),
          filled: widget.filled,
          fillColor: AppColor.greyColor.withOpacity(0.1),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: AppColor.blueOceanColor,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          suffixIcon: widget.typeInput == TypeInput.password
              ? InkWell(
                  onTap: () => setState(() {
                    isOpen = !isOpen;
                  }),
                  child: Icon(
                    isOpen ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                  ),
                )
              : null),
      obscureText: !isOpen,
      keyboardType: widget.keyboardType,
      obscuringCharacter: '*',
    );
  }
}
