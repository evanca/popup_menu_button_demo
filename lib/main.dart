import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "List element $index",
                      style: const TextStyle(fontSize: 22),
                    ),
                    _buildPopupMenu(index, context)
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget _buildPopupMenu(int index, BuildContext context) {
    List<PopupMenuItem> menuItems = [
      const PopupMenuItem(
        child: SizedBox(
          height: 64,
          child: Text(
            "Menu item A",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      const PopupMenuItem(
        child: SizedBox(
          height: 64,
          child: Text(
            "Menu item B",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      const PopupMenuItem(
        child: SizedBox(
          height: 64,
          child: Text(
            "Menu item C",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      const PopupMenuItem(
        child: SizedBox(
          height: 64,
          child: Text(
            "Menu item D",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      const PopupMenuItem(
        child: SizedBox(
          height: 64,
          child: Text(
            "Menu item E",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ];

    return GestureDetector(
        child: const Icon(Icons.more_vert),
        onTap: () {
          showMenu(
              context: context,
              position: const RelativeRect.fromLTRB(0, 0, 0, 0),
              items: menuItems);
        });
  }
}
