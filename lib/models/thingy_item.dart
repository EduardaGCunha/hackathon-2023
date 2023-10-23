// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:new_project/models/thingy.dart';
import 'package:new_project/utils/app_routes.dart';

//ImagePicker()
class ThingyItem extends StatelessWidget {
  final Thingy thingy;

  const ThingyItem(this.thingy, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        height: 150,
        width: 200,
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(86, 29, 93, 0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 150,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.CESTA_SCREEN);
                    },
                    child: Image.asset(
                      thingy.image,
                      fit: BoxFit.cover,
                      height: double.infinity,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      thingy.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Obvia',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   padding: EdgeInsets.all(16.0),
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         child: Image.asset(
    //           thingy.image, // Replace with the path to your image
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       const SizedBox(height: 16.0),
    //       Text(
    //         thingy.title,
    //         style: TextStyle(
    //           fontSize: 24.0,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       SizedBox(height: 8.0),
    //       Text(
    //         thingy.description,
    //         style: TextStyle(
    //           fontSize: 16.0,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
