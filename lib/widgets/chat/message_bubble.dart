import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(this.message, this.isMe, {required this.key});
  final Key key;
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isMe
                  ? Colors.grey[300]
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12),
                bottomLeft: !isMe
                    ? const Radius.circular(0)
                    : const Radius.circular(12),
                bottomRight:
                    isMe ? const Radius.circular(0) : const Radius.circular(12),
              ),
            ),
            width: 140,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isMe
                    ? Colors.black
                    : Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)
                        .color,
              ),
            ),
          ),
        ]);
  }
}
