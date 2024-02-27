import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrapper_list/widgets/image_files.dart';
import 'package:wrapper_list/widgets/text_widg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<dynamic> imageContainers = [
    const ImageFiles(),
    const ImageFiles(),
    const ImageFiles(),
    const ImageFiles(),
  ];

  PageController pageController = PageController();

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
                  GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        final PageController _controller = PageController();
                        final currentPage = _controller.page ?? 0;
                        final nextPage = currentPage + 1;
                        pageController.animateToPage(
                          nextPage.toInt(),
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear,
                        );
                      },
                      child: const Icon(Icons.arrow_forward)),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  width: 360, //360
                  child: ClipPath(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 214, 223, 214),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1598764557991-b9f211b73b81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBsYW50c3xlbnwwfHwwfHx8MA%3D%3D',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 3),
                        child: Container(
                            color:
                                Colors.transparent // Adjust opacity as needed
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
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: imageContainers.length,
                      itemBuilder: (context, index) {
                        return const ImageFiles();
                      },
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 150, right: 150),
              height: 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.white70, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.white70, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
              child: const Row(),
            ),
          ],
        ),
      ),
    );
  }
}
