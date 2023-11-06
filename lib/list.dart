import 'package:flutter/material.dart';
import 'package:listviewhorrizontal/image.dart';
import 'package:listviewhorrizontal/model/listmodel.dart';

class ListBulider extends StatefulWidget {
  const ListBulider({super.key});

  @override
  State<ListBulider> createState() => _ListBuliderState();
}

class _ListBuliderState extends State<ListBulider> {

  List items=[
    ListModel(name: "Delhi", image: 'images/images1.jpeg', subtitle: "India\nPopulatin:19mill"),
    ListModel(name: "Landon", image: 'images/images2.jpeg', subtitle: "Britan\nPopulatin:8mill"),
    ListModel(name: "Vancour", image: 'images/images3.jpeg', subtitle: "Caneda\nPopulatin:2.4mill"),
    ListModel(name: "NewYork", image: 'images/images4.jpeg', subtitle: "USA\nPopulatin:8.1mill"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cities Around World",style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amber,),
      body:

      ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagePage(name:items[index].name, image: items[index].image, subtitle: items[index].subtitle)));
            },
            child: Container(
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 8.0), // Add some horizontal spacing between cards
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      items[index].image,
                      fit: BoxFit.cover,
                      width: 400,
                      height: 200,
                    ),
                    Text(
                      items[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(items[index].subtitle),
                  ],
                ),
            ),
          );
        },
      )

    );
  }
}