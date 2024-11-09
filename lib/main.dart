import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Green header section with rounded corners
          Positioned(
            top: 0,
            left: -30, // Overflow to the left side
            right: -30, // Overflow to the right side
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.fromLTRB(30, 60, 30, 20), // Extra padding for more space at the top
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0), // Padding around "ONLINE SOFT SELL"
                    child: Text(
                      'ONLINE SOFT SELL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Space between the title and subtitle
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0), // Padding around "Hello, Admin"
                    child: Text(
                      'Hello, Admin',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Grid of dashboard cards, slightly overlapping the green header
          Positioned(
            top: 150, // Positioned so the cards overlap with the green header
            left: 16,
            right: 16,
            bottom: 0,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.85,
              children: [
                DashboardCard(
                  icon: Icons.people,
                  label: 'CUSTOMERS',
                ),
                DashboardCard(
                  icon: Icons.business,
                  label: 'SUPPLIERS',
                ),
                DashboardCard(
                  icon: Icons.inventory,
                  label: 'PRODUCTS',
                ),
                DashboardCard(
                  icon: Icons.point_of_sale,
                  label: 'POS',
                ),
                DashboardCard(
                  icon: Icons.money,
                  label: 'EXPENSE',
                ),
                DashboardCard(
                  icon: Icons.shopping_cart,
                  label: 'ORDERS',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String label;

  DashboardCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.blue,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
