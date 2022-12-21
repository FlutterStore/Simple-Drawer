import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  FlutterDrawers(),
    );
  }
}


class FlutterDrawers extends StatefulWidget {
  const FlutterDrawers({super.key,});

  @override
  State<FlutterDrawers> createState() => _FlutterDrawersState();
}

class _FlutterDrawersState extends State<FlutterDrawers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Simple Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/flutterpng.png",fit: BoxFit.cover,),
                ),
              )
            ),
            ListTile(
              onTap: () {
                
              },
              leading: const Icon(Icons.home_rounded),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                
              },
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
            ),
            ListTile(
              onTap: () {
                
              },
              leading: const Icon(Icons.notifications),
              title: const Text('Notification'),
            ),
            ListTile(
              onTap: () {
                
              },
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
          ],
        ),
      ),
      body: const SizedBox(),
    );
  }
}
