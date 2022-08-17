import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("https://wallpaperaccess.com/full/34907.jpg");
  }
}
