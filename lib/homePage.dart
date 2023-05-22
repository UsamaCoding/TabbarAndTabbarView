import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("TABBAR"),
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: const Center(
                    child: Text(
                      "First Tab",
                      style: TextStyle(fontSize: 45, color: Colors.blue),
                    ),
                  ),
                ),
                Container(child: const Center(
                    child: Text(
                      "Second Tab",
                      style: TextStyle(fontSize: 45, color: Colors.blue),
                    ),
                  ),),
                Container(child: const Center(
                    child: Text(
                      "Third Tab",
                      style: TextStyle(fontSize: 45, color: Colors.blue),
                    ),
                  ),),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
