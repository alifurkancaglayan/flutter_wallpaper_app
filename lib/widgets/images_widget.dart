import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_app/pages/image_page.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int index;
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisSpacing: 10,
        shrinkWrap: true,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        children: <Widget>[
          for (int i = 0; i <= 6; i++)
            GestureDetector(
              onTap: () {
                index = i;
                context.pushTransparentRoute(
                  ImagePages(
                    index: index.toString(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: "$i",
                    child: Image.asset(
                      "assets/images/$i.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
