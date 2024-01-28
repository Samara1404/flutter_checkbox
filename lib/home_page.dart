import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<String>items = List.generate(8, (index) => 'Item ${index+1}');
 List<bool>selectedItems=List.generate(8, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: const Text(
          'Flutter Checbox',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
     body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          leading: Checkbox(value: 
          selectedItems[index], 
          onChanged: (value){
            setState(() {
              selectedItems[index] = value!;
            });
          }),
        );
      },
      ),
    );
  }
}
