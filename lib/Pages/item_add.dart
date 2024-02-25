import 'package:boxicons/boxicons.dart';
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
              child: Text(
                'Perfect for a beginner or anyone\n looking for an '
                ' easy-to-take-care for plant',
                style: GoogleFonts.adamina(
                  fontSize: 21,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 13, right: 13),
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (counter > 0) {
                        setState(() {
                          counter = counter - 1;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.remove, size: 38,),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      counter.toString().padLeft(2, '0'), // Display 00 format
                      style: const TextStyle(fontSize: 80, color: Colors.white70),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter = counter + 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.add, size: 38,),
                    ),
                  ),
                ],
              ),
            ),


         const   SizedBox(height: 25,),
            Container(
              margin:
              const EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                   child:   Icon(
                     Boxicons.bx_basket,
                     color: Colors.black,
                     size: 34,
                   ),
                 ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Add to Cart',
                    style: GoogleFonts.akatab(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    '\$50.00',
                    style: GoogleFonts.akatab(
                        color: Colors.white, fontSize: 21),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
