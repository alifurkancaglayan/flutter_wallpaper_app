import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_app/widgets/images_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "Favorites",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavoritePage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Your Favorites:",
                style:  TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Flexible(
              child:  ImagesWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
