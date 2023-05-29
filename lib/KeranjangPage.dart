import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:coffeshop/MyStyle.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Keranjang',
        style: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        ),
        body: SafeArea(

      child:
            Column(
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(

                    )
                  ],
                )
              ],
            )
    ));
  }
}
