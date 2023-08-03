import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String body;
  const CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purple[400],
                  borderRadius: BorderRadius.circular(30)),
              child:  Center(
                child: ListTile(
                  title: Text(
                    //'',
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  subtitle: Text(
                   // '',
                   body,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 160,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 107, 246),
                  borderRadius: BorderRadius.circular(140),
                ),
              ),
            )
          ],
        ));
  }
}
