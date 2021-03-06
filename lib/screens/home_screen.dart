import 'package:chatapp_ui/widgets/favorite_contacts.dart';
import 'package:chatapp_ui/widgets/home_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/category_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Inmates',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const IconButton(
          icon: Icon(
            Icons.sort,
            size: 30,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const CategoryContainer(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: const[
                  FavoriteContacts(),
                  HomeChats()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
