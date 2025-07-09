import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("MonApp", style: TextStyle(fontSize: 30)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          spacing: 20,
          children: [
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bienvenu sur mon application",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.pink),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blueAccent),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mon stack", style: TextStyle(fontSize: 20)),
                Row(
                  spacing: 20,
                  children: [
                    StackWidget(Colors.red, "Flutter"),
                    StackWidget(Colors.yellow.shade800, "Dart"),
                    StackWidget(Colors.grey, "Android"),
                  ],
                ),
              ],
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ce que je vais apprendre",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  spacing: 20,
                  children: [
                    CourseItem("Flutter", "Application mobile Android"),
                    CourseItem("Flutter", "Application mobile iOS"),
                    CourseItem("Flutter", "Application web"),
                    CourseItem("Flutter", "Application Desktop"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget CourseItem(String title, String subtitle) {
  return Row(
    spacing: 20,
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(color: Colors.blueAccent),
      ),
      Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text("$subtitle", style: TextStyle(fontSize: 15)),
        ],
      ),
    ],
  );
}

Widget StackWidget(Color color, String data) {
  return Stack(
    children: [
      Container(width: 100, height: 100, color: color),
      Positioned(
        bottom: 10,
        left: 10,
        child: Text("$data", style: TextStyle(color: Colors.white)),
      ),
    ],
  );
}
