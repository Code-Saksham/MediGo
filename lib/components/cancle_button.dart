// import 'package:..//constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/colors.dart';

class CancleButton extends StatelessWidget {
  const CancleButton({Key? key, required this.onpress, required this.btnname})
      : super(key: key);
  final VoidCallback onpress;
  final String btnname;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
          AppColors.mainblack,
        )),
        onPressed: onpress,
        child: Text(
          btnname,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ));
  }
}
