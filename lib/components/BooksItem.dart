import 'package:flutter/material.dart';
import 'package:tugas_pertemuan5_ramdan/pages/DetailBooks.dart';
import 'package:tugas_pertemuan5_ramdan/utils/constants.dart';

class BooksItem extends StatelessWidget {
  final dynamic itemData;
  const BooksItem({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    double widthItem = size.width/5;

    return InkWell(
      onTap: () {
        print("on tap");
      },
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widthItem,
              height: widthItem * 5 / 3,
              margin: EdgeInsets.only(right: 12, left: 12, bottom: 24),
              decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: COLOR_BLACK.withAlpha(50),
                      blurRadius: 10,
                      offset: const Offset(1, 5),
                      spreadRadius: 0.5,
                    ),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(itemData["image"])
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
