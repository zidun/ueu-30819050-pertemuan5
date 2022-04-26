import 'package:flutter/material.dart';
import 'package:tugas_pertemuan5_ramdan/pages/DetailBooks.dart';
import 'package:tugas_pertemuan5_ramdan/utils/constants.dart';

class ImageItem extends StatelessWidget {
  final String url;
  const ImageItem({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double widthItem = size.width/2.4;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailBooks(
              title: "The Psychology of Money: Timeless lessons on wealth, greed, and happiness",
              image: url,
              author: "Morgan Housel",
              date: "Sep 2020",
            )));
      },
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: widthItem,
          height: widthItem * 5 / 3,
          margin: EdgeInsets.only(right: 12, left: 12, bottom: 24),
          decoration: BoxDecoration(
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
                image: NetworkImage(url),
              )
          ),
        ),
      ),
    );
  }
}
