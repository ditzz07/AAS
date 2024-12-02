import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strawberry Pavlova'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/strawberry_pavlova.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Resep klasik untuk membuat Strawberry Pavlova yang lezat.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bahan-bahan:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- 4 putih telur\n- 200 gram gula\n- 1 sdt cuka'),
                  SizedBox(height: 10),
                  Text(
                    'Langkah-langkah:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      '1. Kocok putih telur.\n2. Tambahkan gula.\n3. Panggang.'),
                ],
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resep Lain:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ListTile(
                    title: Text('Chocolate Mousse'),
                  ),
                  ListTile(
                    title: Text('Lemon Tart'),
                  ),
                  ListTile(
                    title: Text('Tiramisu'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
