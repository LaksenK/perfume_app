import 'package:flutter/material.dart';
import 'package:perfume_app/models/fade_transition.dart';
import 'package:perfume_app/pages/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        
      ),
drawer: Drawer(
  backgroundColor: Colors.grey[800],
  child: Column(
    
    children: [
      DrawerHeader(
  child: Text(
    "Essentia Luxe",
    style: TextStyle(
      fontSize: 36,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
       color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,
       
    ),
  ),
),
      Padding(padding:  const EdgeInsets.only(left: 25.0),
      child:Divider(color: Colors.grey[800]),),
      
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.home),
          iconColor: Colors.white,
          title: Text('H o m e',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/home');},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.shopping_bag),
          iconColor: Colors.white,
          title: Text('P r o d u c t s',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/products');},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.favorite),
          iconColor: Colors.white,
          title: Text('W i s h l i s t',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/wishlist');},
        ),
      ),
    Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.shopping_cart),
          iconColor: Colors.white,
          title: Text('C a r t ',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/cart');},
        ),
      ),
    Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.call),
          iconColor: Colors.white,
          title: Text('C o n t a c t  ',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/contact');},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.person),
          iconColor: Colors.white,
          title: Text('L o g i n',style: TextStyle(color: Colors.white),),
          onTap: () { 
             Navigator.pop(context);
            Navigator.pushNamed(context, '/login');},
        ),
      ),],
  ),
),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
        Text(
          "E s s e n t i a                  L u x e",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white 
                : Colors.black, 
          ),
          textAlign: TextAlign.center,
        ),
            const SizedBox(height: 6), 

            
            Text(
              "Capturing the essence of luxury",
              style: TextStyle(fontSize: 16,  color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12), 

            
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), 
                child: Image.network(
                  "https://img.freepik.com/premium-photo/mockup-black-fragrance-perfume-bottle-mockup-dark-coals-background-top-view-horizontal_158023-2045.jpg?w=1060",
                  fit: BoxFit.cover,
                  width: double.infinity, 
                  height: 200, 
                ),
              ),
            ),

            const SizedBox(height: 20), 

          
            Align(
  alignment: Alignment.center,
  child: Container(
    width: double.infinity, 
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(FadePageRoute(page: Products())); 
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[850], 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), 
        ),
        padding: const EdgeInsets.symmetric(vertical: 16), 
      ),
      child: const Text(
        "Shop Now",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white, 
        ),
      ),
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}