import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecf0f1),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return const Center(child: Text("HomeScreen"));
          },
        ),
      ),
    );
  }
}
