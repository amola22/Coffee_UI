import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://th.bing.com/th/id/R.9529088a30a168d3900d4a3b226c064f?rik=fPT9ahDa6mGmHw&riu=http%3a%2f%2fimages2.fanpop.com%2fimage%2fphotos%2f13800000%2fCoffee-coffee-13874329-1920-1200.jpg&ehk=iLbUe9zr8%2flaHEy%2fhmjxATTPqiEwva%2bAPX%2bMPRp%2b6Zo%3d&risl=&pid=ImgRaw&r=0',
            ),
          ),
          Container(
            color: Colors.grey[700],
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Cappuccino',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'With Oat Milk',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(6.986)',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://th.bing.com/th/id/R.f4c54a32e9c8cb71cc9c66e421e8c10e?rik=C7DVaX%2b5mkgwPg&pid=ImgRaw&r=0',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Text(
                      'milk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.YhVOVEVl3osXPAq6C4ScJQHaLK?pid=ImgDet&w=531&h=800&rs=1',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const Text(
                      'Coffee',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            children: const [
              Text(
                'A cappuccino is an espresso-based coffee drink that originated in Italy and is prepared with steamed milk foam (microfoam).Read More............',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Size',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                height: 55,
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('S')),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('M')),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('L'))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "\$4.20",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}