import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormApps extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final bool? obscureText;
  final bool? suffixActive;
  final VoidCallback? onTap;
  const FormApps({
    super.key,
    this.controller,
    this.obscureText = false,
    this.hint = "",
    this.label = "",
    this.suffixActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              label!,
              style: white500.copyWith(fontSize: 16.0),
            ),
          ),
          TextFormField(
            cursorColor: Colors.white,
            controller: controller,
            obscureText: obscureText!,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.white60),
              hintText: hint,
              suffix: suffixActive!
                  ? InkWell(
                      onTap: onTap,
                      child: obscureText!
                          ? const Icon(
                              CupertinoIcons.eye,
                              color: Colors.white,
                            )
                          : const Icon(
                              CupertinoIcons.eye_slash,
                              color: Colors.white,
                            ),
                    )
                  : const SizedBox(),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
