import 'package:flutter/material.dart';
import 'package:login/order_page.dart';
 
 class HomePage extends StatefulWidget {
   const HomePage({super.key});
 
   @override
   State<HomePage> createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Home Page')),
       body: Center(
         child: Column(
          // Catatan: `spacing` bukan properti bawaan Column, kemungkinan maksudnya SizedBox
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat datang di Home Page!'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderPage()),
                );
              },
              child: Text('Order Now'),
            ),
          ],
         ),
       ),
     );
   }
 }