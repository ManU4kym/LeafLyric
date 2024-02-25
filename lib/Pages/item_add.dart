import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 196, 191),
      body: Padding(
        padding: const EdgeInsets.only(top: 68.0, left: 0, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Potted \n Head",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 28,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green)),
                    child: const Icon(
                      Icons.menu,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Stack(
              children: [
                Container(
                  height: 230,
                  width: 360,
                  child: Text(
                    'Plants',
                    style: GoogleFonts.almendra(
                      fontSize: 161.5,
                      color: const Color.fromARGB(194, 138, 171, 162)
                          .withOpacity(0.6),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 110,
                  bottom: 32,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(49, 96, 192, 165),
                            Color.fromARGB(194, 45, 68, 62),
                            Color.fromARGB(194, 51, 79, 71),
                            Color.fromARGB(211, 0, 116, 81),
                          ]),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 123,
                    bottom: 50,
                    child: Center(
                      child: Image.network(
                        'https://www.pngmart.com/files/7/Vase-PNG-File.png',
                        height: 205,
                      ),
                    )),
              ],
            ),
            Center(
              child: Text('Perfect for a beginner or anyone\n looking for an '
                  ' easy-to-take-care for plant', style: GoogleFonts.damion(
                fontSize:21,
                color: Colors.grey[700],
              ),),
            ),
            Positioned(
              left: 10,
              top: 160,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green),
                ),
                child: Text(
                  counter.toString().padLeft(2, '0'), // Display 00 format
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            // Increment button
            Positioned(
              right: 10,
              top: 160,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.green),
                  ),
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            // Decrement button
            Positioned(
              right: 70,
              top: 160,
              child: GestureDetector(
                onTap: () {
                  if (counter > 0) {
                    setState(() {
                      counter = counter - 1;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.green),
                  ),
                  child: const Icon(Icons.remove),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
