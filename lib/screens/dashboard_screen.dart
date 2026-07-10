import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MRK DAIRY"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "MRK DAIRY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Customers"),
            ),
            ListTile(
              leading: Icon(Icons.local_drink),
              title: Text("Milk Collection"),
            ),
            ListTile(
              leading: Icon(Icons.sell),
              title: Text("Sales"),
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text("Inventory"),
            ),
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text("Reports"),
            ),
          ],
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        children: const [
          DashboardCard(
            title: "Customers",
            icon: Icons.people,
          ),
          DashboardCard(
            title: "Milk",
            icon: Icons.local_drink,
          ),
          DashboardCard(
            title: "Sales",
            icon: Icons.sell,
          ),
          DashboardCard(
            title: "Payments",
            icon: Icons.payment,
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 45,
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
