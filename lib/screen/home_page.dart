import 'package:flutter/material.dart';
//import 'package:tuco/components/category.dart';
import 'package:tuco/screen/colors_page.dart';
import 'package:tuco/screen/family_members_page.dart';
import 'package:tuco/screen/numbers_page.dart';
import 'package:tuco/screen/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildCategoryCard(
                text: 'Numbers',
                color: const Color(0xffEF9335),
                icon: Icons.format_list_numbered,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NumbersPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _buildCategoryCard(
                text: 'Family Members',
                color: const Color(0xff558B37),
                icon: Icons.family_restroom,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FamilyPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _buildCategoryCard(
                text: 'Colors',
                color: const Color(0xff79359F),
                icon: Icons.palette,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColorsPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _buildCategoryCard(
                text: 'Phrases',
                color: const Color(0xff50ADC7),
                icon: Icons.chat_bubble,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhrasesPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard({
    required String text,
    required Color color,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.8), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 30),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
