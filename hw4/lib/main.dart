import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> menu = ["เมนูที่1", "เมนูที่2"];

  void addItem() {
    setState(() {
      menu.add('เมนูที่ ${menu.length + 1}');
    });
  }

  void removeItem() {
    setState(() {
      if (menu.isNotEmpty) {
        menu.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Builder"), centerTitle: true),

      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.menu),
            title: Text(menu[index]),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () => addItem(),child: const Icon(Icons.add),tooltip: "Add Item",),

          const SizedBox(height: 10),

          FloatingActionButton(onPressed: () => removeItem(),child: const Icon(Icons.remove),tooltip: "Remove Item",),
        ],
      ),
    );
  }
}
