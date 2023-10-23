// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:new_project/models/category.dart';
import '../utils/app_routes.dart';

//ImagePicker()
class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {Key? key}) : super(key: key);

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
                      category.image,
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
                      category.title,
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
  }
}
