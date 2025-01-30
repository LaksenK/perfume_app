import 'package:flutter/material.dart';
import 'package:perfume_app/models/perfume.dart';
import 'package:perfume_app/models/perfumeModel.dart';

class Perfumetile extends StatelessWidget {
  final Perfume perfume;
  final Cart cart; 

  const Perfumetile({super.key, required this.perfume, required this.cart}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          GestureDetector(
  onTap: () {
    Navigator.pushNamed(
      context,
      '/productDetails', 
      arguments: perfume, 
    );
  },
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
      perfume.imageUrl,
      width: double.infinity,
      height: 130,
      fit: BoxFit.cover,
    ),
  ),
),


          const SizedBox(height: 10),

          
          Text(
            perfume.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            perfume.description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),

      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${perfume.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.blue),
                onPressed: () {
                  cart.addToCart(perfume); 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${perfume.name} added to cart!")),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
