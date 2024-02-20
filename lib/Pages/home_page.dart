import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrapper_list/widgets/text_widg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    "Lets's Make our \n lives Greener",
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
              height: 25,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    TextWidg(
                      text: 'Plant',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextWidg(
                      text: 'Flowers',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextWidg(
                      text: 'Cacti',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextWidg(
                      text: 'Herb',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextWidg(
                      text: 'Bortan',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Plant Collections',
                    style: GoogleFonts.akatab(
                      fontSize: 24,
                    ),
                  ),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
            Stack(children: [
              Container(
                height: 420,
                width: 360,
                child: ClipPath(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 214, 223, 214),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1598764557991-b9f211b73b81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 3),
                      child: Container(
                          color: Colors.transparent // Adjust opacity as needed
                          ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Container(
                        height: 370,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: 10,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(75),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1477554193778-9562c28588c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGxhbnRzfGVufDB8fDB8fHww',
                              height: 30,
                              width: 30,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
