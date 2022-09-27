import 'package:coffeeui/Unity/Coffee_title.dart';
import 'package:coffeeui/Unity/Coffee_type.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final List coffeeType = [
    [
      'Cappuccino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  HomePage({super.key});

  void coffeeTypeSelected(int index) {
    for (int i = 0; i < coffeeType.length; i++) {
      coffeeType[i][1] = false;
    }
    coffeeType[index][1] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 25,
            ),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Text(
              "Find the best Coffee for you ",
              style: TextStyle(
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find Your Coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                }),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTitle(
                  coffeeName: 'latte',
                  coffeePrice: '4.20',
                ),
                CoffeeTitle(
                  coffeeName: 'Cappuccino',
                  coffeePrice: '5.20',
                ),
                CoffeeTitle(
                  coffeeName: 'tea',
                  coffeePrice: '8.20',
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Text(
                'Special for you',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}