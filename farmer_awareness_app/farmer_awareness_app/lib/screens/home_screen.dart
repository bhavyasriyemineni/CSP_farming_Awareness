import 'package:flutter/material.dart';
import 'news_screen.dart';
import 'schemes_screen.dart';
import 'prices_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farmer Awareness')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            // Welcome banner
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2E7D32), Color(0xFF66BB6A)],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Icon(Icons.agriculture, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text('Welcome, Farmer!',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 4),
                  Text('Stay updated with the latest agricultural info',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Navigation cards
            _buildNavCard(context, Icons.newspaper, 'Agri News',
                'Latest agricultural news & updates', const NewsScreen()),
            const SizedBox(height: 12),
            _buildNavCard(context, Icons.account_balance, 'Government Schemes',
                'Subsidies, loans & scheme alerts', const SchemesScreen()),
            const SizedBox(height: 12),
            _buildNavCard(context, Icons.trending_up, 'Market Prices',
                'Real-time crop prices & markets', const PricesScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildNavCard(BuildContext context, IconData icon, String title,
      String subtitle, Widget destination) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF2E7D32),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => destination)),
      ),
    );
  }
}
