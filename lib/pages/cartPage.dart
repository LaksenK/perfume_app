import 'package:flutter/material.dart';
import 'package:perfume_app/models/perfumeModel.dart';
import 'package:perfume_app/models/perfume.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Cart cart = Cart(); // ✅ Use singleton cart

  @override
  Widget build(BuildContext context) {
    List<Perfume> cartItems = cart.getUserCart(); // ✅ Fetch from shared cart

    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Your Cart"),
       
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                'Your Cart is Empty',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: cartItems.toSet().length,
              itemBuilder: (context, index) {
                Perfume perfume = cartItems.toSet().toList()[index];
                int quantity = cartItems.where((item) => item == perfume).length;

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Image.network(perfume.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                    title: Text(perfume.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("\$${perfume.price.toStringAsFixed(2)}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              cart.removeFromCart(perfume);
                            });
                          },
                        ),
                        Text(
                          '$quantity',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline, color: Colors.green),
                          onPressed: () {
                            setState(() {
                              cart.addToCart(perfume);
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.black54),
                          onPressed: () {
                            setState(() {
                              cart.userCart.removeWhere((item) => item == perfume);
                            });
                          },
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
