import 'perfume.dart';

class Cart {
  
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  
  final List<Perfume> allPerfumes = [
    Perfume(
      name: "Most Wanted",
      imageUrl: "https://www.houseofwhiffs.com/wp-content/uploads/2023/02/Sauvage-by-Christian-Dior-EDP-100ml-2.png",
      description: "Classic floral fragrance",
      price: 120.00,
    ),
    Perfume(
      name: "Dior Sauvage",
      imageUrl: "https://luxuryperfume.com/cdn/shop/files/19830_1024x1024.jpg?v=1683729023",
      description: "Fresh and spicy scent",
      price: 110.00,
    ),
    Perfume(
      name: "Versace Eros",
      imageUrl: "https://luxuryperfume.com/cdn/shop/products/11230B_1024x1024.jpg?v=1634124389",
      description: "Bold and masculine",
      price: 100.00,
    ),
    Perfume(
      name: "Brit Rhythm",
      imageUrl: "https://luxuryperfume.com/cdn/shop/products/13734_1024x1024.jpg?v=1635466917",
      description: "Thrill and energy ",
      price: 50.00,
    ),
  ];

  final List<Perfume> userCart = [];

  
  List<Perfume> getPerfumeList() {
    return allPerfumes;
  }

 
  List<Perfume> getUserCart() {
    return userCart;
  }

  
  void addToCart(Perfume perfume) {
    userCart.add(perfume);
  }

 
  void removeFromCart(Perfume perfume) {
    userCart.remove(perfume);
  }
}
