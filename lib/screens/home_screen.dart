import 'package:flutter/material.dart';
import 'package:new_project/models/thingy_grid.dart';
import 'package:new_project/utils/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: Icon(
      //           Icons.menu,
      //           color: const Color.fromARGB(255, 0, 36, 93),
      //           size: ((MediaQuery.of(context).size.height) * 0.0262),
      //         ),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomAppBar(
        height: ((MediaQuery.of(context).size.height) * 0.0867),
        shape: const CircularNotchedRectangle(),
        color: Color.fromARGB(255, 29, 93, 0),
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
                      onPressed: () {},
                      icon: const Icon(Icons.home, color: Colors.white),
                      iconSize: (MediaQuery.of(context).size.height * 0.0351),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.CESTA_SCREEN);
                      },
                      icon: const Icon(
                        Icons.food_bank,
                        color: Colors.white,
                      ),
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 78, 161, 14),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Assine Já!'),
            ),
          );
        },
        label: Text('Assine Já!'), // Text for the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                child: Image.asset(
              'lib/images/logo3.jpeg',
              fit: BoxFit.fitWidth,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
            )),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: ((MediaQuery.of(context).size.height) * 0.01),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'DESCUBRA',
                style: TextStyle(
                    fontSize: (MediaQuery.of(context).size.height * 0.04),
                    color: Color.fromARGB(255, 78, 161, 14),
                    fontFamily: 'Obvia',
                    fontWeight: FontWeight.w600),
              ),
            ),
            const ThingyGrid(),
          ],
        ),
      ),
    );
  }
}
