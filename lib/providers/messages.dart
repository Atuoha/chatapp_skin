import 'package:flutter/cupertino.dart';

import '../models/message_model.dart';

class MessageData extends ChangeNotifier {
// EXAMPLE CHATS ON HOME SCREEN
  final List chats = [
    Message(
      sender: 2,
      time: '5:30 PM',
      text: 'Hey, hope you are okay?',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 4,
      time: '4:30 PM',
      text: 'I found your wallet beside the doors',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 3,
      time: '3:30 PM',
      text: 'Can I bring it to your house today?',
      isLiked: false,
      unread: false,
    ),
    Message(
      sender: 6,
      time: '2:30 PM',
      text: 'Without the phone can you still make it?',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 7,
      time: '1:30 PM',
      text: 'Show me what you have so I can figure out how to fix it',
      isLiked: false,
      unread: false,
    ),
    Message(
      sender: 5,
      time: '12:30 PM',
      text:
          'Can we just be friends am already in with someone and am serious with her',
      isLiked: false,
      unread: false,
    ),
    Message(
      sender: 1,
      time: '11:30 AM',
      text: 'Don\'t allow this light to shine brighter and blind from others',
      isLiked: false,
      unread: false,
    ),
  ];

// EXAMPLE MESSAGES IN CHAT SCREEN
  final List messages = [
    Message(
      sender: 2,
      time: '5:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: true,
      unread: true,
    ),
    Message(
      sender: 0,
      time: '4:30 PM',
      text: 'Just walked my doge. She was super duper cute. The best pupper!!',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 2,
      time: '3:45 PM',
      text: 'How\'s the doggo?',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 2,
      time: '3:15 PM',
      text: 'All the food',
      isLiked: true,
      unread: true,
    ),
    Message(
      sender: 0,
      time: '2:30 PM',
      text: 'Nice! What kind of food did you eat?',
      isLiked: false,
      unread: true,
    ),
    Message(
      sender: 2,
      time: '2:00 PM',
      text: 'I ate so much food today.',
      isLiked: false,
      unread: true,
    ),
  ];
}
