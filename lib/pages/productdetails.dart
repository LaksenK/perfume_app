import 'package:flutter/material.dart';
import '../models/perfume.dart'; 
import '../models/perfumeModel.dart'; 

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final Perfume perfume = ModalRoute.of(context)!.settings.arguments as Perfume;
    final cart = Cart();
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
       
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  perfume.imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

           
              Text(
                perfume.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              const SizedBox(height: 10),

              
              Text(
                perfume.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 20),

            
              Text(
                "\$${perfume.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),

             
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    cart.addToCart(perfume); 
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${perfume.name} added to cart!"),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}