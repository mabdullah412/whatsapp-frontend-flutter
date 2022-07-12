import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/input_message_bar.dart';

import '../colors.dart';
import '../widgets/chat_list.dart';
import '../widgets/contacts_list.dart';
import '../widgets/desktop_chat_appbar.dart';
import '../widgets/profile_bar.dart';
import '../widgets/search_bar.dart';

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
            child: Column(
              children: const [
                DesktopChatAppBar(),
                SizedBox(height: 10),
                Expanded(child: ChatList()),
                InputMessageBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
