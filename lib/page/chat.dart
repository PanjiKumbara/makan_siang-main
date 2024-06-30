import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help Center',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/65fee0801ec1082f04da6c97/1hplppu07',
        visitor: TawkVisitor(name: 'User', email: 'kasirunpanji@gmail.com'),
        onLoad: () {
          print('Hello');
        },
        onLinkTap: (String url) {
          print(url);
        },
        placeholder: const Center(
          child: Text('Memuat...'),
        ),
      ),
    );
  }
}
