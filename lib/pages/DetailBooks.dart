import 'package:flutter/material.dart';
import 'package:tugas_pertemuan5_ramdan/components/ImageItem.dart';
import 'package:tugas_pertemuan5_ramdan/utils/constants.dart';
import 'package:tugas_pertemuan5_ramdan/utils/helpers.dart';

class DetailBooks extends StatelessWidget {
  final String title, date, author, image;

  const DetailBooks({
  Key? key,
  required this.title,
  required this.date,
  required this.image,
  required this.author
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 24;
    final sizePadding = EdgeInsets.symmetric(horizontal: padding);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Books"),
        backgroundColor: COLOR_BLACK,
      ),
      backgroundColor: COLOR_WHITE,
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacingV(48),
              Center(child: ImageItem(url: image)),
              spacingV(padding),
              Padding(
                padding: sizePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title, style: themeData.textTheme.headline2),
                    spacingV(8),
                    Text("Penulis : "+author, style: themeData.textTheme.headline4),
                    spacingV(8),
                    Text("Rilis : "+date, style: themeData.textTheme.headline4),
                    spacingV(24),
                    Text("Doing well with money isn’t necessarily about what you know. It’s about how you behave. And behavior is hard to teach, even to really smart people.\n\nMoney—investing, personal finance, and business decisions—is typically taught as a math-based field, where data and formulas tell us exactly what to do. But in the real world people don’t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your own unique view of the world, ego, pride, marketing, and odd incentives are scrambled together.\n\nIn The Psychology of Money, award-winning author Morgan Housel shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life’s most important topics. : "+date, style: themeData.textTheme.bodyText2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
