import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: (
        AppBar(
          title: const Text("Contact Us"),
          
        )
      ),
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                "Hello.",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                   color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              
              Text(
                "No.723/F\nRagama, \nGampaha",
                style: TextStyle(fontSize: 16,  color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,),
                
              ),
              const SizedBox(height: 8),
              Text(
                "(+94) 237-258-233\n\n"
                "essentialuxe@gmail.com\n",
                style: TextStyle(fontSize: 16,  color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,),
              ),
              const SizedBox(height: 32),

             
              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16),

          
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Anything else you'd like us to know?",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 32),

             
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
