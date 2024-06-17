import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final List<Map<String, dynamic>> favoriteHotels = [
    {
      'hotelName': 'La Gradle',
      'description': 'A luxury stay with a beautiful beach view.',
      'image': 'images/lagradle.jpg', 
    },
    {
      'hotelName': 'The Lady Hill',
      'description': 'A peaceful retreat in the mountains.',
      'image': 'images/thelady.jpg', 
    },
    {
      'hotelName': 'Fort Bazar',
      'description': 'Located in the heart of the city with all amenities.',
      'image': 'images/bazar.jpg', 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Hotels List'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: favoriteHotels.length,
        itemBuilder: (context, index) {
          final hotel = favoriteHotels[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(hotel['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotel['hotelName'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(hotel['description']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}