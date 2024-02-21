import 'dart:ui';

import 'package:boxicons/boxicons.dart';
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
              padding: const EdgeInsets.only(left: 8.0, bottom: 12),
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
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        height: 390,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),
                        ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 200,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1477554193778-9562c28588c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGxhbnRzfGVufDB8fDB8fHww',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text('The Potted Head',
                                style: GoogleFonts.akatab(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('Perfect for beginners or anyone looking'
                                      ' for an easy-to-care plant.',
                                    style: GoogleFonts.akatab(
                                      fontSize: 16,
                                      color: Colors.grey[700]
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    print('wozaa');
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20, right: 20),
                                    height: 45,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.black
                                    ),
                                    child:  Row(
                                      children:  [
                                      const  SizedBox(width: 8,),
                                       const Icon(Boxicons.bx_basket, color: Colors.yellowAccent,),
                                        const SizedBox(width: 8,),
                                        Text('Add to Cart', style: GoogleFonts.akatab(
                                          color: Colors.white,
                                        ),),
                                        const SizedBox(width: 78,),
                                        Text('\$50.00', style: GoogleFonts.akatab(
                                          color: Colors.white,
                                          fontSize: 21
                                        ),),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),

                    ],
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
