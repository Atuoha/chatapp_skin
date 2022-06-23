import 'package:chatapp_ui/providers/providers.dart';
import 'package:chatapp_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/color.dart';
import 'screens/home_screen.dart';

void main() => runApp(const ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserData(),
        ),
        ChangeNotifierProvider(
          create: (context) => MessageData(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatApp UI',
        theme: ThemeData(
          primaryColor: primaryColor,
          primarySwatch: primaryColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: primaryColor,
            secondary: accentColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes:  {
          ChatScreen.routeName:(context) => const ChatScreen()
        },
      ),
    );
  }
}
