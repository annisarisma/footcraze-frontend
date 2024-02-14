import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Chat Page',
        style: TextStyle(
          color: Colors.blue, // Ganti dengan warna yang diinginkan
        ),
      ),
    );
  }
}