import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AppBar"),
        actions: const [
          Icon(Icons.time_to_leave),
          Icon(Icons.message),
          Icon(Icons.access_alarms)
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("ElevatedButton")),
          OutlinedButton(onPressed: () {}, child: const Text("OutlinedButton")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          TextButton(onPressed: () {}, child: const Text("TextButton")),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("1")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("OutlinedButton")),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              TextButton(onPressed: () {}, child: const Text("TextButton")),
            ],
          )
        ],
      ),
      drawer: const Drawer(),
      bottomNavigationBar: const ListTile(
        title: Text("ListTile_title"),
        subtitle: Text("ListTile_subtitle"),
        leading: Icon(Icons.games_rounded),
        trailing: Icon(Icons.rocket_launch),
      ),
    );
  }
}
