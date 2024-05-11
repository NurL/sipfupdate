import 'package:flutter/material.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.text, //yang wajib diisi kalau dia dipanggil, parameter apapun yang wajib diisi dikasih require
    this.color = Colors.white,
    this.textColor = ColorConstant.primary,
    this.borderColor = ColorConstant.tertiary,
    this.label,
    this.icon,
  });

  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final String?
      label; //tanda ? dibacanya string no label, brarti gak usah dikasi parameter gak masalah, kalo butuh baru dikasi
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        label != null
            ? Container(
                margin: EdgeInsets.only(bottom: 4),
                alignment: Alignment.centerLeft,
                child: Text(
                  label!,
                ),
              )
            : Container(),
        TextField(
          style: TextStyle(color: textColor),
          decoration: InputDecoration(
            hintText: text, //akan di tampilkan di dalam textfieldnya
            prefixIcon: icon, //prefix untuk di kiri, suffix untuk kanan
            hintStyle: TextStyle(color: textColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: borderColor),
            ),
          ),
        ),
      ],
    );
  }
}
