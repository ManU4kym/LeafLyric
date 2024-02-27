import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/item_add.dart';

class ImageFiles extends StatefulWidget {
  const ImageFiles({super.key,  });

  @override
  State<ImageFiles> createState() => _ImageFilesState();
}

class _ImageFilesState extends State<ImageFiles> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 360,
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
                color: const Color.fromARGB(113, 73, 67, 84),
                borderRadius: BorderRadius.circular(24)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                'https://images.unsplash.com/photo-1477554193778-9562c28588c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGxhbnRzfGVufDB8fDB8fHww',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'The Potted Head',
            style: GoogleFonts.akatab(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Perfect for beginners or anyone looking'
                  ' for an easy-to-care plant.',
              style: GoogleFonts.akatab(
                  fontSize: 16, color: Colors.grey[700]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ItemPage(),
                ),
              );
            },
            child: Container(
              margin:
              const EdgeInsets.only(left: 20, right: 20),
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Boxicons.bx_basket,
                    color: Colors.yellowAccent,
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
                    width: 78,
                  ),
                  Text(
                    '\$50.00',
                    style: GoogleFonts.akatab(
                        color: Colors.white, fontSize: 21),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
