import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/profile_bar.dart';
import 'package:whatsapp_clone/widgets/search_bar.dart';

import '../widgets/contacts_list.dart';

class DesktopScreenLayout extends StatelessWidget {
  const DesktopScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // * Left
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ProfileBar(),
                  SearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),

          // * Right
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text('Chats'),
            ),
          ),
        ],
      ),
    );
  }
}
