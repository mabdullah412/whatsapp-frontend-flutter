import 'package:flutter/material.dart';

import '../colors.dart';

class InputMessageBar extends StatelessWidget {
  const InputMessageBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(7),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: searchBarColor,
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),

          // send message icon
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
