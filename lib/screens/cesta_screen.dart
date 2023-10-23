import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_project/models/category_grid.dart';
import 'package:new_project/utils/app_routes.dart';

class CestaScreen extends StatefulWidget {
  const CestaScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CestaScreenState createState() => _CestaScreenState();
}

class _CestaScreenState extends State<CestaScreen> {
  // List of items to display in the carousel.
  final List<String> imageUrls = [
    'lib/images/caridade1.jpg',
    'lib/images/caridade2.jpg',
    'lib/images/caridade3.jpeg',
  ];

  // Index of the currently selected item.
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 15, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Obrigado, Mari!',
                      style: TextStyle(
                          fontSize: 43,
                          color: Color.fromARGB(255, 29, 93, 0),
                          fontFamily: 'Obvia',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      'Sua compra transforma. ',
                      style: TextStyle(
                          fontSize:
                              ((MediaQuery.of(context).size.height) * 0.02),
                          color: const Color.fromARGB(255, 29, 93, 0),
                          fontFamily: 'Obvia',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            CarouselSlider(
              items: imageUrls.map((imageUrl) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 119, 186, 87),
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageUrls.map((imageUrl) {
                int index = imageUrls.indexOf(imageUrl);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? const Color.fromARGB(255, 137, 246, 74)
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              child: const Row(
                children: [
                  Text(
                    'Quem ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 29, 93, 0),
                        fontFamily: 'Obvia',
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'VOCÊ ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 29, 93, 0),
                        fontFamily: 'Obvia',
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'ajudou: ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 29, 93, 0),
                        fontFamily: 'Obvia',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const CategoryGrid(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: ((MediaQuery.of(context).size.height) * 0.0867),
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 29, 93, 0),
        child: IconTheme(
            data: const IconThemeData(
              color: Color.fromARGB(255, 60, 105, 172),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.HOME_SCREEN);
                      },
                      icon: const Icon(Icons.home, color: Colors.white),
                      iconSize: (MediaQuery.of(context).size.height * 0.0351),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.food_bank, color: Colors.white),
                      iconSize: (MediaQuery.of(context).size.height * 0.0351),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .pushNamed(AppRoutes.USER_FORM);
                      },
                      icon: const Icon(Icons.person, color: Colors.white),
                      iconSize: (MediaQuery.of(context).size.height * 0.0351),
                    ),
                  ]),
            )),
      ),
    );
  }
}
