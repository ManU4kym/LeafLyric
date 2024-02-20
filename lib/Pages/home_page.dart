import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrapper_list/widgets/text_widg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 195, 196, 191),
      body: Padding(
        padding: const EdgeInsets.only(top: 68.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            const SizedBox(
              height: 25,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Plant Collections', style: GoogleFonts.akatab(
                    fontSize: 24,
                  ),),
                  const Icon(Icons.arrow_forward,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
