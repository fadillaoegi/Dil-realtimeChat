import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/material.dart';

class FormApps extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  const FormApps({
    super.key,
    this.controller,
    this.hint,
    this.label,
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
              style: white600.copyWith(fontSize: 16.0),
            ),
          ),
          TextFormField(
            cursorColor: Colors.white,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
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