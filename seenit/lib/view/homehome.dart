import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homehome extends StatefulWidget {
  const homehome({super.key});

  @override
  State<homehome> createState() => _homehomeState();
}

class _homehomeState extends State<homehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homehome"),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                child: Text("hello"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.amber,
                  title: Text("item1"),
                  subtitle: Text("shoes"),
                  leading: Text("Paynow"),
                  trailing: Text("Add to cart"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.amber,
                  title: Text("item 2"),
                  leading: Text(""),
                  trailing: Text(""),
                ),
              ),
              ExpansionTile(
                title: Text("Food Items"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Align(alignment: Alignment.topLeft),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
