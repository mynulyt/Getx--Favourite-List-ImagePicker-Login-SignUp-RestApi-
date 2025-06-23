import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> fruitList = [
    'Orange',
    'Apple',
    'Banana',
    'Mango',
    'Lemon',
    'Watermelon',
    'Pineapple',
    'Graphs',
    'Guava',
    'papaya',
    'papaya',
    'papaya',
  ];
  List<String> tempFruitList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (tempFruitList.contains(fruitList[index].toString())) {
                  tempFruitList.remove(fruitList[index].toString());
                } else {
                  tempFruitList.add(fruitList[index].toString());
                }
                setState(() {});
              },
              title: Text(index.toString()),
              subtitle: Text(fruitList[index].toString()),
              trailing: Icon(
                Icons.favorite,
                color:
                    tempFruitList.contains(fruitList[index].toString())
                        ? Colors.white
                        : Colors.deepOrange,
              ),
            ),
          );
        },
      ),
    );
  }
}
