import 'package:flutter/material.dart';
import 'package:perfume_app/components/perfumeTile.dart';
import 'package:perfume_app/models/perfumeModel.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final Cart cart = Cart(); 

  @override
  Widget build(BuildContext context) {
    List perfumes = cart.getPerfumeList(); 

    return Scaffold(
     
      appBar: AppBar(
        title: const Text("Products"),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
            const SizedBox(height: 20),

          
            Center(
              child: Text(
  "All Products",
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black, 
  ),
),
            ),
            const SizedBox(height: 20),

           
            Expanded(
              child: GridView.builder(
                itemCount: perfumes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.7, 
                ),
                itemBuilder: (context, index) {
                  return Perfumetile(perfume: perfumes[index], cart: cart); 
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
