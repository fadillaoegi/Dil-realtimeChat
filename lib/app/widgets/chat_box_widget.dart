
import 'package:dilchat/app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({
    super.key,
    this.messages,
    this.dummyUserId = true,
  });

  final String? messages;
  final bool? dummyUserId;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: dummyUserId! ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(10.0),
        constraints: BoxConstraints(
          maxWidth: Get.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: dummyUserId! ? Colors.grey.shade300 : ColorApps.primary,
          boxShadow: [
            BoxShadow(
              color: ColorApps.primary.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 5),
            )
          ],
          borderRadius: dummyUserId!
              ? const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
        ),
        child: Text(
          messages!,
          style: TextStyle(color: dummyUserId! ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
