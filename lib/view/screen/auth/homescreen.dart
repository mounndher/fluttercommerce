import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.shopping_bag_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(241, 255, 255, 255),
  shape:  CircularNotchedRectangle(),
  notchMargin: 10.0,
  clipBehavior: Clip.antiAlias,
  child: SizedBox(
    height: kBottomNavigationBarHeight,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        
        IconButton(
          icon:  Icon(Icons.home),
          onPressed: () {
           
          },
        ),
        
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            
          },
        ),
        const SizedBox(),
        
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {
           
          },
        ),
        
        IconButton(
          icon: const Icon(Icons.account_circle_outlined),
          onPressed: () {
            
          },
        )
      ],
    ),
  ),
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('home scren')),
        ],
      ),
    );
  }
}