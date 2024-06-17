import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final List<Map<String, dynamic>> bookings = [
    {
      'hotelName': 'La Gradel',
      'price': 150,
      'quantity': 3,
      'image': 'images/lagradle.jpg', 
    },
    {
      'hotelName': 'The Lady Hill',
      'price': 100,
      'quantity': 2,
      'image': 'images/thelady.jpg', 
    },
  ];

  @override
  Widget build(BuildContext context) {
    int totalPrice = bookings.fold<int>(0, (sum, item) => sum + (item['price'] as int) * (item['quantity'] as int));

    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Cart'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: bookings.length,
              itemBuilder: (context, index) {
                final booking = bookings[index];
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
                              image: AssetImage(booking['image']),
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
                                booking['hotelName'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('\$${booking['price']}'),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          children: [
                            Text(
                              'x${booking['quantity']}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${totalPrice}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Implement checkout functionality
                },
                child: Text('Check Out'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Updated parameter
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}