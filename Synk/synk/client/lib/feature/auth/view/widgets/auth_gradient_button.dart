import 'package:flutter/material.dart';
import 'package:synk/core/theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  final String ButtonText;
  final VoidCallback onTap;
  const AuthGradientButton({super.key,required this.ButtonText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Pallete.gradient1,
            Pallete.gradient2,
          ], 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(395, 55),
              backgroundColor: Colors.transparent,
              shadowColor: const Color.fromRGBO(0, 0, 0, 0)),
          child: Text(
              ButtonText,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              )),
        ));
  }
}
